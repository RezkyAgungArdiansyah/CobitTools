<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class df2_imp extends Model
{
    use HasFactory;
    protected $table = "df2_imp";
    protected $guarded = ["id_df2"];
}
