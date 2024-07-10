<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Topsis_pakan_lele extends Model
{
    use HasFactory;
    protected $table = 'topsis_pakan_lele';
    public $timestamps = false;
    protected $fillable = [
        'nama_pakan',
        'harga',
        'kualitas',
        'ketersediaan',
        'kandungan_nutrisi',
    ];
}
