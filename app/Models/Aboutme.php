<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Aboutme extends Model
{
    use HasFactory;

    protected $guarded = [];

    protected $fillable = ['content', 'image'];

    protected $casts = [
        'image' => 'array',
    ];
}