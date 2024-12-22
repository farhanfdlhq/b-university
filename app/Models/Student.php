<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    use HasFactory;

    // Menentukan nama tabel secara eksplisit
    protected $table = 'students';  // Gantilah menjadi 'students' karena tabel di database menggunakan nama tersebut

    protected $guarded = [];
}
