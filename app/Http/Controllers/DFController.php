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

use App\Models\GMO;

class DFController extends Controller{

    public function index(){
        return view('DF/index', ["judul"=> "Design Factor","head"=>"Design Factor","slug"=>" "]);
    }

    public function DF_slug($slug, $version = 0){
        switch ($slug) {
            case "DF1":
                if($version == 0){$version = df1_imp::max('versions');}else{$version= filter_var($version, FILTER_SANITIZE_NUMBER_INT);}
                $max = df1_imp::max('versions');
                $MST = mst_df1::all();
                $Data = df1_imp::where('versions',$version)->get();
                $DFName = 'Enterprise Strategy Archetype';
                $DFMap = df1_map::all();
                break;
            case "DF2":
                if($version == 0){$version = df2_imp::max('versions');}else{$version= filter_var($version, FILTER_SANITIZE_NUMBER_INT);}
                $max = df2_imp::max('versions');
                $MST = mst_df2_eg::all();
                $Data = df2_imp::where('versions',$version)->get();
                $DFName = 'Enterprise Goal';
                $DFMap = [df2_map1::all(),df2_map2::all()];
                break;
            case "DF3":
                if($version == 0){$version = df3_imp::max('versions');}else{$version= filter_var($version, FILTER_SANITIZE_NUMBER_INT);}
                $max = df3_imp::max('versions');
                $MST = mst_df3::all();
                $Data = df3_imp::where('versions',$version)->get();
                $DFName = 'Generic IT Risk Category';
                $DFMap = df3_map::all();
                break;
            case "DF4":
                if($version == 0){$version = df4_imp::max('versions');}else{$version= filter_var($version, FILTER_SANITIZE_NUMBER_INT);}
                $max = df4_imp::max('versions');
                $MST = mst_df4::all();
                $Data = df4_imp::where('versions',$version)->get();
                $DFName = 'Generic IT-Related Issue';
                $DFMap = df4_map::all();
                break;
            case "DF5":
                if($version == 0){$version = df5_imp::max('versions');}else{$version= filter_var($version, FILTER_SANITIZE_NUMBER_INT);}
                $max = df5_imp::max('versions');
                $MST = mst_df5::all();
                $Data = df5_imp::where('versions',$version)->get();
                $DFName = 'Treat Landscape';
                $DFMap = df5_map::all();
                break;
            case "DF6":
                if($version == 0){$version = df6_imp::max('versions');}else{$version= filter_var($version, FILTER_SANITIZE_NUMBER_INT);}
                $max = df6_imp::max('versions');
                $MST = mst_df6::all();
                $Data = df6_imp::where('versions',$version)->get();
                $DFName = 'Compliance Requirements';
                $DFMap = df6_map::all();
                break;
            case "DF7":
                if($version == 0){$version = df7_imp::max('versions');}else{$version= filter_var($version, FILTER_SANITIZE_NUMBER_INT);}
                $max = df7_imp::max('versions');
                $MST = mst_df7::all();
                $Data = df7_imp::where('versions',$version)->get();
                $DFName = 'Role of IT';
                $DFMap = df7_map::all();
                break;
            case "DF8":
                if($version == 0){$version = df8_imp::max('versions');}else{$version= filter_var($version, FILTER_SANITIZE_NUMBER_INT);}
                $max = df8_imp::max('versions');
                $MST = mst_df8::all();
                $Data = df8_imp::where('versions',$version)->get();
                $DFName = 'Sourcing Model for IT';
                $DFMap = df8_map::all();
                break;
            case "DF9":
                if($version == 0){$version = df9_imp::max('versions');}else{$version= filter_var($version, FILTER_SANITIZE_NUMBER_INT);}
                $max = df9_imp::max('versions');
                $MST = mst_df9::all();
                $Data = df9_imp::where('versions',$version)->get();
                $DFName = 'IT Implementation Methods';
                $DFMap = df9_map::all();
                break;
            case "DF10":
                if($version == 0){$version = df10_imp::max('versions');}else{$version= filter_var($version, FILTER_SANITIZE_NUMBER_INT);}
                $max = df10_imp::max('versions');
                $MST = mst_df10::all();
                $Data = df10_imp::where('versions',$version)->get();
                $DFName = 'Technology Adoption Strategy';
                $DFMap = df10_map::all();
                break;
            }
            $GMO = GMO::all();
            return view("DF/$slug",["judul"=> "Design Factor","head"=>"Design Factor","DFName"=>$DFName,"MST"=>$MST,"Data"=>$Data,"DFMap"=>$DFMap,"GMO"=>$GMO,"slug"=>$slug, "max"=>$max]);   
        }    
public function DF_slug_submit($slug, Request $request){
    
    if(in_array($slug ,['DF5','DF6','DF8','DF9','DF10'])){
        $form_data = $request->input('input');
        $sum_importance = 0;
        foreach($form_data as $row){
            $sum_importance += $row[0];
        }
        if($sum_importance != 100){back()->with('Sum_Error_not_100%','The sum of importance not 100 %');}
    }
    $form_data = $request->input('input');
    $arr = ['EG01','EG02','EG03','EG04','EG05','EG06','EG07','EG08','EG09','EG10','EG11','EG12','EG13'];
    $lower_slug = strtolower($slug);
    $df_imp = app("App\\Models\\{$lower_slug}_imp");
    $maxVersion = $df_imp::max('versions');
    $i = 0;
    foreach($form_data as $row){
        $j = 0;
        if($slug == 'DF3'){
            $df_imp->{'id_'.$lower_slug} = $i+1;
            foreach(['impact','likelihood'] as $col){
                // $df_imp::where('id_'.$lower_slug,$i+1)->update([$col => $row[$j]]); this is old code
                $df_imp->$col = $row[$j];
                $j++;}
            // $df_imp::where('id_'.$lower_slug,$i+1)->update(['risk_rating' => $row[0]*$row[1]]); this is old code
            // $df_imp::where('id_'.$lower_slug,$i+1)->update(['baseline' => $row[3]]); this is old code
                $df_imp->risk_rating = $row[0]*$row[1];
                $df_imp->baseline = $row[3];
        }
        elseif($slug != 'DF2' ){
            $df_imp->{'id_'.$lower_slug} = $i+1;
            foreach(['importance','baseline'] as $col){
                // $df_imp::where('id_'.$lower_slug,$i+1)->update([$col => $row[$j]]); this is old code
                $df_imp->$col = $row[$j];
                $j++;}
        }
        else{
            $df_imp->{'id_'.$lower_slug} = $arr[$i];
            foreach(['importance','baseline'] as $col){
                // $df_imp::where('id_'.$lower_slug,$arr[$i])->update([$col => $row[$j]]); this is old code
                $df_imp->$col = $row[$j];            
                $j++;}
            }
    $df_imp->users_id = auth()->user()->id;
    $df_imp->versions = $maxVersion+1;
    $rowToInsert[] = $df_imp->attributesToArray();
    $i++;
    }
    $df_imp::insert($rowToInsert);

    switch ($slug) {
        case "DF1":
            $MST = mst_df1::all();
            $Data = df1_imp::where('versions',$maxVersion+1)->get();
            $DFName = 'Enterprise Strategy Archetype';
            $DFMap = df1_map::all();
            break;
        case "DF2":
            $MST = mst_df2_eg::all();
            $Data = df2_imp::where('versions',$maxVersion+1)->get();
            $DFName = 'Enterprise Goal';
            $DFMap = [df2_map1::all(),df2_map2::all()];
            break;
        case "DF3":
            $MST = mst_df3::all();
            $Data = df3_imp::where('versions',$maxVersion+1)->get();
            $DFName = 'Generic IT Risk Category';
            $DFMap = df3_map::all();
            break;
        case "DF4":
            $MST = mst_df4::all();
            $Data = df4_imp::where('versions',$maxVersion+1)->get();
            $DFName = 'Generic IT-Related Issue';
            $DFMap = df4_map::all();
            break;
        case "DF5":
            $MST = mst_df5::all();
            $Data = df5_imp::where('versions',$maxVersion+1)->get();
            $DFName = 'Treat Landscape';
            $DFMap = df5_map::all();
            break;
        case "DF6":
            $MST = mst_df6::all();
            $Data = df6_imp::where('versions',$maxVersion+1)->get();
            $DFName = 'Compliance Requirements';
            $DFMap = df6_map::all();
            break;
        case "DF7":
            $MST = mst_df7::all();
            $Data = df7_imp::where('versions',$maxVersion+1)->get();
            $DFName = 'Role of IT';
            $DFMap = df7_map::all();
            break;
        case "DF8":
            $MST = mst_df8::all();
            $Data = df8_imp::where('versions',$maxVersion+1)->get();
            $DFName = 'Sourcing Model for IT';
            $DFMap = df8_map::all();
            break;
        case "DF9":
            $MST = mst_df9::all();
            $Data = df9_imp::where('versions',$maxVersion+1)->get();
            $DFName = 'IT Implementation Methods';
            $DFMap = df9_map::all();
            break;
        case "DF10":
            $MST = mst_df10::all();
            $Data = df10_imp::where('versions',$maxVersion+1)->get();
            $DFName = 'Technology Adoption Strategy';
            $DFMap = df10_map::all();
            break;
        }
        $GMO = GMO::all();
        return view("DF/$slug",["judul"=> "Design Factor","head"=>"Design Factor","DFName"=>$DFName,"MST"=>$MST,"Data"=>$Data,"DFMap"=>$DFMap,"GMO"=>$GMO,"slug"=>$slug,"max" => $maxVersion+1]);   
    }

} // close bracket of class
