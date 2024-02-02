<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class df4_imp extends Model
{
    use HasFactory;
    protected $table = "df4_imp";
    protected $guarded = ["id_df4"];
    public $timestamps = false;

}
