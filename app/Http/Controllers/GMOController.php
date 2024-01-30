<?php

namespace App\Http\Controllers;

use App\Models\GMO;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class GMOController extends Controller
{
    public function ShowGMO(){
        $GMO = GMO::all( );
        return view('Page/GMO', ["judul"=> "Design Factor","head"=>"GMO", "GMO"=> $GMO]);
    }
}
