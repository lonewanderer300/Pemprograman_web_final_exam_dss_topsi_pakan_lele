<?php

namespace App\Http\Controllers;

use App\Models\Topsis_pakan_lele;
use Illuminate\Http\Request;
use App\Models\Topsis_bobot;
use Illuminate\Support\Facades\DB;

class topsis_pakan_leleController extends Controller
{
    public function index()
    {
        $topsis_pakan_lele = Topsis_pakan_lele::all();
        return view('topsis_pakan_lele.index', compact('topsis_pakan_lele'));
    }

    public function create()
    {
        return view('topsis_pakan_lele.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'nama_pakan' => 'required',
            'harga' => 'required|numeric',
            'kualitas' => 'required|numeric',
            'ketersediaan' => 'required|numeric',
            'kandungan_nutrisi' => 'required|numeric',
        ]);

        Topsis_pakan_lele::create($request->all());

        return redirect()->route('topsis_pakan_lele.index')->with('success', 'Pakan created successfully.');
    }

    public function show($id)
{
    $topsis_pakan_lele = Topsis_pakan_lele::find($id);
    if (!$topsis_pakan_lele) {
        abort(404);
    }
    return view('topsis_pakan_lele.show', compact('topsis_pakan_lele'));
}

    public function edit($id)
    {
        $topsis_pakan_lele = Topsis_pakan_lele::findOrFail($id);
        return view('topsis_pakan_lele.edit', compact('topsis_pakan_lele'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'nama_pakan' => 'required',
            'harga' => 'required|numeric',
            'kualitas' => 'required|numeric',
            'ketersediaan' => 'required|numeric',
            'kandungan_nutrisi' => 'required|numeric',
        ]);

        $topsis_pakan_lele = Topsis_pakan_lele::findOrFail($id);
        $topsis_pakan_lele->update($request->all());

        return redirect()->route('topsis_pakan_lele.index')->with('success', 'Pakan updated successfully.');
    }

    public function destroy($id)
    {
        $topsis_pakan_lele = Topsis_pakan_lele::findOrFail($id);
        $topsis_pakan_lele->delete();

        return redirect()->route('topsis_pakan_lele.index')->with('success', 'Pakan deleted successfully.');
    }

    public function results()
{
    // Step 1: Calculate normalization denominators
    $denominators = DB::table('topsis_pakan_lele')
        ->select(
            DB::raw('SQRT(SUM(POW(harga, 2))) AS p_harga'),
            DB::raw('SQRT(SUM(POW(kualitas, 2))) AS p_kualitas'),
            DB::raw('SQRT(SUM(POW(ketersediaan, 2))) AS p_ketersediaan'),
            DB::raw('SQRT(SUM(POW(kandungan_nutrisi, 2))) AS p_kandungan_nutrisi')
        )
        ->first();

    // Step 2: Normalize the data
    $data = DB::table('topsis_pakan_lele')
        ->select(
            'id',
            'nama_pakan',
            DB::raw('harga / ' . $denominators->p_harga . ' AS n_harga'),
            DB::raw('kualitas / ' . $denominators->p_kualitas . ' AS n_kualitas'),
            DB::raw('ketersediaan / ' . $denominators->p_ketersediaan . ' AS n_ketersediaan'),
            DB::raw('kandungan_nutrisi / ' . $denominators->p_kandungan_nutrisi . ' AS n_kandungan_nutrisi')
        )
        ->get();

    // Step 3: Apply weights
    $weights = DB::table('topsis_bobot')->first();
    $weighted = $data->map(function ($item) use ($weights) {
        return [
            'id' => $item->id,
            'nama_pakan' => $item->nama_pakan,
            'v_harga' => $item->n_harga * $weights->w1,
            'v_kualitas' => $item->n_kualitas * $weights->w2,
            'v_ketersediaan' => $item->n_ketersediaan * $weights->w3,
            'v_kandungan_nutrisi' => $item->n_kandungan_nutrisi * $weights->w4,
        ];
    });

    // Step 4: Calculate ideal solutions
    $idealPositive = [
        'harga' => $weighted->min('v_harga'),
        'kualitas' => $weighted->max('v_kualitas'),
        'ketersediaan' => $weighted->max('v_ketersediaan'),
        'kandungan_nutrisi' => $weighted->max('v_kandungan_nutrisi'),
    ];

    $idealNegative = [
        'harga' => $weighted->max('v_harga'),
        'kualitas' => $weighted->min('v_kualitas'),
        'ketersediaan' => $weighted->min('v_ketersediaan'),
        'kandungan_nutrisi' => $weighted->min('v_kandungan_nutrisi'),
    ];

    // Step 5: Calculate distances and preference scores
    $results = $weighted->map(function ($item) use ($idealPositive, $idealNegative) {
        $dPositive = sqrt(
            pow($item['v_harga'] - $idealPositive['harga'], 2) +
            pow($item['v_kualitas'] - $idealPositive['kualitas'], 2) +
            pow($item['v_ketersediaan'] - $idealPositive['ketersediaan'], 2) +
            pow($item['v_kandungan_nutrisi'] - $idealPositive['kandungan_nutrisi'], 2)
        );

        $dNegative = sqrt(
            pow($item['v_harga'] - $idealNegative['harga'], 2) +
            pow($item['v_kualitas'] - $idealNegative['kualitas'], 2) +
            pow($item['v_ketersediaan'] - $idealNegative['ketersediaan'], 2) +
            pow($item['v_kandungan_nutrisi'] - $idealNegative['kandungan_nutrisi'], 2)
        );

        $preference = $dPositive / ($dPositive + $dNegative);

        return [
            'id' => $item['id'],
            'nama_pakan' => $item['nama_pakan'],
            'preference' => $preference,
        ];
    });

    // Sort the results by preference in descending order
    $results = $results->sortByDesc('preference');

    return view('topsis_pakan_lele.results', compact('results'));
}

}
