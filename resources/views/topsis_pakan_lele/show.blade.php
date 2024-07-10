<!DOCTYPE html>
<html>
<head>
    <title>View TOPSIS Pakan Lele</title>
</head>
<body>
    <h1>View TOPSIS Pakan Lele</h1>
    <div>
        <strong>ID:</strong> {{ $topsis_pakan_lele->id }}
    </div>
    <div>
        <strong>Nama Pakan:</strong> {{ $topsis_pakan_lele->nama_pakan }}
    </div>
    <div>
        <strong>Harga:</strong> {{ $topsis_pakan_lele->harga }}
    </div>
    <div>
        <strong>Kualitas:</strong> {{ $topsis_pakan_lele->kualitas }}
    </div>
    <div>
        <strong>Ketersediaan:</strong> {{ $topsis_pakan_lele->ketersediaan }}
    </div>
    <div>
        <strong>Kandungan Nutrisi:</strong> {{ $topsis_pakan_lele->kandungan_nutrisi }}
    </div>
    <a href="{{ route('topsis_pakan_lele.index') }}">Back</a>
</body>
</html>
