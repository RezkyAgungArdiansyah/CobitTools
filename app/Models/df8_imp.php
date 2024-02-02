<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class df8_imp extends Model
{
    use HasFactory;
    protected $table = "df8_imp";
    protected $guarded = ["id_df7"];
    public $timestamps = false;

}
