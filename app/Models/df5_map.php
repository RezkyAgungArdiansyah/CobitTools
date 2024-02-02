<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class df5_map extends Model
{
    use HasFactory;
    protected $table = "df5_map";
    protected $guarded = ["id"];
    public $timestamps = false;
}
