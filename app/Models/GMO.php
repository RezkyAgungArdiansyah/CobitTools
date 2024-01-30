<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GMO extends Model
{
    use HasFactory;

    protected $table = "mst_gmo";
    protected $guarded = ["id"];
}
