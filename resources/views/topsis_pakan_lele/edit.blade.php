<!DOCTYPE html>
<html>
<head>
    <title>Edit TOPSIS Pakan Lele</title>
</head>
<body>
    <h1>Edit TOPSIS Pakan Lele</h1>
    <form action="{{ route('topsis_pakan_lele.update', $topsis_pakan_lele->id) }}" method="POST">
        @csrf
        @method('PUT')
        <div>
            <label for="nama_pakan">Nama Pakan:</label>
            <input type="text" id="nama_pakan" name="nama_pakan" value="{{ $topsis_pakan_lele->nama_pakan }}" required>
        </div>
        <div>
            <label for="harga">Harga:</label>
            <input type="number" id="harga" name="harga" value="{{ $topsis_pakan_lele->harga }}" required>
        </div>
        <div>
            <label for="kualitas">Kualitas:</label>
            <input type="number" id="kualitas" name="kualitas" value="{{ $topsis_pakan_lele->kualitas }}" required>
        </div>
        <div>
            <label for="ketersediaan">Ketersediaan:</label>
            <input type="number" id="ketersediaan" name="ketersediaan" value="{{ $topsis_pakan_lele->ketersediaan }}" required>
        </div>
        <div>
            <label for="kandungan_nutrisi">Kandungan Nutrisi:</label>
            <input type="number" id="kandungan_nutrisi" name="kandungan_nutrisi" value="{{ $topsis_pakan_lele->kandungan_nutrisi }}" required>
        </div>
        <button type="submit">Update</button>
    </form>
</body>
</html>
