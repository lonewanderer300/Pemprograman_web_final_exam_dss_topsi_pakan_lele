<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Topsis Pakan Lele Results</title>
    <style>
        table {
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>Topsis Pakan Lele Results</h1>
    <table class="table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Preference</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($results as $result)
            <tr>
                <td>{{ $result['nama_pakan'] }}</td>
                <td>{{ $result['preference'] }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
