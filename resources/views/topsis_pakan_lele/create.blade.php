<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <title>Create TOPSIS Pakan Lele</title>
</head>
<body>
    <h1>Create TOPSIS Pakan Lele</h1>
    <form action="{{ route('topsis_pakan_lele.store') }}" method="POST">
        @csrf
        <div>
            <label for="nama_pakan">Nama Pakan:</label>
            <input type="text" id="nama_pakan" name="nama_pakan" required>
        </div>
        <div>
            <label for="harga">Harga:</label>
            <input type="text" id="harga" name="harga" required>
        </div>
        <div>
            <label for="kualitas">Kualitas:</label>
            <input type="text" id="kualitas" name="kualitas" required>
        </div>
        <div>
            <label for="ketersediaan">Ketersediaan:</label>
            <input type="text" id="ketersediaan" name="ketersediaan" required>
        </div>
        <div>
            <label for="kandungan_nutrisi">Kandungan Nutrisi:</label>
            <input type="text" id="kandungan_nutrisi" name="kandungan_nutrisi" required>
        </div>
        <button type="submit">Create</button>
    </form>
</body>
</html>
