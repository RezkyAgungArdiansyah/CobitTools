<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class df3_imp extends Model
{
    use HasFactory;
    protected $table = "df3_imp";
    protected $guarded = ["id_df3"];
    public $timestamps = false;

}
