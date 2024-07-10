@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                <h1>SPK Method TOPSIS Pakan Lele</h1>
    <a href="{{ route('topsis_pakan_lele.create') }}">Create New Pakan</a>
    @if (session('success'))
        <p>{{ session('success') }}</p>
    @endif
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Nama Pakan</th>
                <th>Harga</th>
                <th>Kualitas</th>
                <th>Ketersediaan</th>
                <th>Kandungan Nutrisi</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($topsis_pakan_lele as $t)
            <tr>
                <td>{{ $t->id }}</td>
                <td>{{ $t->nama_pakan }}</td>
                <td>{{ $t->harga }}</td>
                <td>{{ $t->kualitas }}</td>
                <td>{{ $t->ketersediaan }}</td>
                <td>{{ $t->kandungan_nutrisi }}</td>
                <td>
                    <a href="{{ route('topsis_pakan_lele.show', $t->id) }}">View</a>
                    <a href="{{ route('topsis_pakan_lele.edit', $t->id) }}">Edit</a>
                    <form action="{{ route('topsis_pakan_lele.destroy', $t->id) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
                </div>
            </div>
        </div>
    </div>
</div>
