<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

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

use App\Models\df1_imp;
use App\Models\df2_imp;
use App\Models\df3_imp;
use App\Models\df4_imp;
use App\Models\df5_imp;
use App\Models\df6_imp;
use App\Models\df7_imp;
use App\Models\df8_imp;
use App\Models\df9_imp;
use App\Models\df10_imp;


class DFController extends Controller{

    public function index(){
        return view('DF/index', ["judul"=> "Design Factor","head"=>"Design Factor"]);
    }

    public function DF_slug($slug){
        switch ($slug) {
            case "DF1":
                $MST = mst_df1::all();
                $Data = df1_imp::all();
                $DFName = 'Enterprise Strategy Archetype';
                break;
            case "DF2":
                $MST = mst_df2_eg::all();
                $Data = df2_imp::all();
                $DFName = 'Enterprise Goal';
                break;
            case "DF3":
                $MST = mst_df3::all();
                $Data = df3_imp::all();
                $DFName = 'Generic IT Risk Category';
                break;
            case "DF4":
                $MST = mst_df4::all();
                $Data = df4_imp::all();
                $DFName = 'Generic IT-Related Issue';
                break;
            case "DF5":
                $MST = mst_df5::all();
                $Data = df5_imp::all();
                $DFName = 'Treat Landscape';
                break;
            case "DF6":
                $MST = mst_df6::all();
                $Data = df6_imp::all();
                $DFName = 'Compliance Requirements';
                break;
            case "DF7":
                $MST = mst_df7::all();
                $Data = df7_imp::all();
                $DFName = 'Role of IT';
                break;
            case "DF8":
                $MST = mst_df8::all();
                $Data = df8_imp::all();
                $DFName = 'Sourcing Model for IT';
                break;
            case "DF9":
                $MST = mst_df9::all();
                $Data = df9_imp::all();
                $DFName = 'IT Implementation Methods';
                break;
            case "DF10":
                $MST = mst_df10::all();
                $Data = df10_imp::all();
                $DFName = 'Technology Adoption Strategy';
                break;
            }
        return view("DF/$slug",["judul"=> "Design Factor","head"=>"Design Factor","DFName"=>$DFName,"MST"=>$MST,"Data"=>$Data,"slug"=>$slug]);   
        }
    
    }