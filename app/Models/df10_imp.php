<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class df10_imp extends Model
{
    use HasFactory;
    protected $table = "df10_imp";
    protected $guarded = ["id_df10"];
}
