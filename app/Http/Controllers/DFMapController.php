<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\GMO;

use App\Models\mst_df1;
use App\Models\mst_df2_eg;
use App\Models\mst_df2_ag;
use App\Models\mst_df3;
use App\Models\mst_df4;
use App\Models\mst_df5;
use App\Models\mst_df6;
use App\Models\mst_df7;
use App\Models\mst_df8;
use App\Models\mst_df9;
use App\Models\mst_df10;

use App\Models\df1_map;
use App\Models\df2_map1;
use App\Models\df2_map2;
use App\Models\df3_map;
use App\Models\df4_map;
use App\Models\df5_map;
use App\Models\df6_map;
use App\Models\df7_map;
use App\Models\df8_map;
use App\Models\df9_map;
use App\Models\df10_map;


class DFMapController extends Controller
{
    
    public function DFMap(){
        return view('Page/DFMap', ["judul"=> "Design Factor","head"=>"DFMap"]);
    }
    
    public function DFMap_slug($slug){
        switch ($slug) {
            case "DF1":
                $MST = mst_df1::all();
                $DF_Map = df1_map::all();
                break;
            case "DF2":
                $MST = [mst_df2_ag::all(),mst_df2_eg::all(),GMO::all()];
                $DF_Map = [df2_map1::all(),df2_map2::all()];
                break;
            case "DF3":
                $MST = mst_df3::all();
                $DF_Map = df3_map::all();
                break;
            case "DF4":
                $MST = mst_df4::all();
                $DF_Map = df4_map::all();
                break;
            case "DF5":
                $MST = mst_df5::all();
                $DF_Map = df5_map::all();
                break;
            case "DF6":
                $MST = mst_df6::all();
                $DF_Map = df6_map::all();
                break;
            case "DF7":
                $MST = mst_df7::all();
                $DF_Map = df7_map::all();
                break;
            case "DF8":
                $MST = mst_df8::all();
                $DF_Map = df8_map::all();
                break;
            case "DF9":
                $MST = mst_df9::all();
                $DF_Map = df9_map::all();
                break;
            case "DF10":
                $MST = mst_df10::all();
                $DF_Map = df10_map::all();
                break;
        }
            $GMO = GMO::all();
            return view("DFMap/$slug",["judul"=> "Design Factor","head"=>"DFMap","MST"=>$MST, "DF_Map"=>$DF_Map,"GMO"=>$GMO, "slug"=>$slug]);
        
    }

    

}
