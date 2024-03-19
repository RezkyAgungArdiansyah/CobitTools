<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

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

use App\Models\weight;
use App\Models\GMO;

class HomeController extends Controller
{
    public function Summary(Request $request){
        if($request->method() == 'POST'){
        if($request->input('input') !== null){
        $form_data = $request->input('input');
        for($i=0;$i<4;$i++){weight::where('id',$i+1)->update(['step_2_weight'=> $form_data[$i]]);}
        }
        else{
        $form_data_ = $request->input('input_');
        for($i=0;$i<6;$i++){weight::where('id',$i+1)->update(['step_3_weight'=> $form_data_[$i]]);}
        }
    }
    
    $GMO = GMO::all();
    // first step (step 2 summary)
    $maxVersion = [df1_imp::max('versions'),df2_imp::max('versions'),df3_imp::max('versions'),df4_imp::max('versions')];
    $Data = [df1_imp::where('versions',$maxVersion[0])->get(),df2_imp::where('versions',$maxVersion[1])->get(),df3_imp::where('versions',$maxVersion[2])->get(),df4_imp::where('versions',$maxVersion[3])->get()];
    $MST = [mst_df1::all(),mst_df2_eg::all(),mst_df3::all(),mst_df4::all()];
    $DFName = ['Enterprise & Strategy','Enterprise Goals','Risk Profile','IT Related Issues'];
    $DFMap = [df1_map::all(),[df2_map1::all(),df2_map2::all()],df3_map::all(),df4_map::all()];
    $relative_imp = [calculate_relative_importance($Data[0],$DFMap[0],$MST[0],$GMO,true),calculate_relative_importance($Data[1],$DFMap[1],$MST[1],$GMO,true,'DF2'),calculate_relative_importance($Data[2],$DFMap[2],$MST[2],$GMO,true,slug:'DF3'),calculate_relative_importance($Data[3],$DFMap[3],$MST[3],$GMO,true)];
    $weight_ = weight::orderBy('id')->get();
    // send 1
    $weight = [[$weight_[0]->step_2_weight],[$weight_[1]->step_2_weight],[$weight_[2]->step_2_weight],[$weight_[3]->step_2_weight]];
    // send 2
    $relative_imp = transposeMatrix($relative_imp);
    $tmp_data = multiplyMatrices($relative_imp,$weight);
    $max  = max(abs(max($tmp_data)[0]),abs(min($tmp_data)[0]));
    //send 3
    $FinalData = [];
    foreach($tmp_data as $row){
        $FinalData[] = round(floor(100*$row[0]/$max)/5)*5;
    }
    // second part (step 3 summary)
    $maxVersion_ = [df5_imp::max('versions'),df6_imp::max('versions'),df7_imp::max('versions'),df8_imp::max('versions'),df9_imp::max('versions'),df10_imp::max('versions')];
    $Data_ = [df5_imp::where('versions',$maxVersion_[0])->get(),df6_imp::where('versions',$maxVersion_[1])->get(),df7_imp::where('versions',$maxVersion_[2])->get(),df8_imp::where('versions',$maxVersion_[3])->get(),df9_imp::where('versions',$maxVersion_[4])->get(),df10_imp::where('versions',$maxVersion_[5])->get()];
    $MST_ = [mst_df5::all(),mst_df6::all(),mst_df7::all(),mst_df8::all(),mst_df9::all(),mst_df10::all()];
    $DFName_ = ['Threat Landscape','Compliance Req\'s','Role of IT','Sourcing Model for IT','IT Implementation Methods','Technology Adoption Strategy'];
    $DFMap_ = [df5_map::all(),df6_map::all(),df7_map::all(),df8_map::all(),df9_map::all(),df10_map::all()];
    $relative_imp_ = [calculate_relative_importance($Data_[0],$DFMap_[0],$MST_[0],$GMO),calculate_relative_importance($Data_[1],$DFMap_[1],$MST_[1],$GMO),calculate_relative_importance($Data_[2],$DFMap_[2],$MST_[2],$GMO,true),calculate_relative_importance($Data_[3],$DFMap_[3],$MST_[3],$GMO),calculate_relative_importance($Data_[4],$DFMap_[4],$MST_[4],$GMO),calculate_relative_importance($Data_[5],$DFMap_[5],$MST_[5],$GMO)];
    $weight_ = weight::orderBy('id')->get();
    $weight_ = [[$weight_[0]->step_3_weight],[$weight_[1]->step_3_weight],[$weight_[2]->step_3_weight],[$weight_[3]->step_3_weight],[$weight_[4]->step_3_weight],[$weight_[5]->step_3_weight]];
    $relative_imp_ = transposeMatrix($relative_imp_);
    $tmp_data_ = multiplyMatrices($relative_imp_,$weight_);

    $temp_data = [];
    $i = 0;
    foreach($tmp_data as $row){
        $temp_data[] = [$tmp_data[$i][0]+$tmp_data_[$i][0]];
        $i++;
    }

    $max  = max(abs(max($temp_data)[0]),abs(min($temp_data)[0]));
    $FinalData_ = [];
    foreach($temp_data as $row){
        $FinalData_[] = round(floor(100*$row[0]/$max)/5)*5;
    }
    return view("Page/Home",["judul"=> "Home","head"=>"Home","GMO"=>$GMO,"all_relative_imp"=>[$relative_imp,$relative_imp_],"FinalData"=>[$FinalData,$FinalData_],"DFName"=>[$DFName,$DFName_],"weight"=>[$weight,$weight_]]);
    }

    















public function DF_Summary2(Request $request){
    if($request->method() == 'POST'){
        $form_data = $request->input('input');
        for($i=0;$i<6;$i++){weight::where('id',$i+1)->update(['step_3_weight'=> $form_data[$i]]);}
        }
    $GMO = GMO::all();
    
    $maxVersion_ = [df1_imp::max('versions'),df2_imp::max('versions'),df3_imp::max('versions'),df4_imp::max('versions')];
    $Data_ = [df1_imp::where('versions',$maxVersion_[0])->get(),df2_imp::where('versions',$maxVersion_[1])->get(),df3_imp::where('versions',$maxVersion_[2])->get(),df4_imp::where('versions',$maxVersion_[3])->get()];
    $MST_ = [mst_df1::all(),mst_df2_eg::all(),mst_df3::all(),mst_df4::all()];
    $DFMap_ = [df1_map::all(),[df2_map1::all(),df2_map2::all()],df3_map::all(),df4_map::all()];
    $relative_imp_ = [calculate_relative_importance($Data_[0],$DFMap_[0],$MST_[0],$GMO,true),calculate_relative_importance($Data_[1],$DFMap_[1],$MST_[1],$GMO,true,'DF2'),calculate_relative_importance($Data_[2],$DFMap_[2],$MST_[2],$GMO,true,slug:'DF3'),calculate_relative_importance($Data_[3],$DFMap_[3],$MST_[3],$GMO,true)];
    $weight_ = weight::orderBy('id')->get();
    $weight_ = [[$weight_[0]->step_2_weight],[$weight_[1]->step_2_weight],[$weight_[2]->step_2_weight],[$weight_[3]->step_2_weight]];
    $relative_imp_ = transposeMatrix($relative_imp_);
    $tmp_data_ = multiplyMatrices($relative_imp_,$weight_);
    
    $maxVersion = [df5_imp::max('versions'),df6_imp::max('versions'),df7_imp::max('versions'),df8_imp::max('versions'),df9_imp::max('versions'),df10_imp::max('versions')];
    $Data = [df5_imp::where('versions',$maxVersion[0])->get(),df6_imp::where('versions',$maxVersion[1])->get(),df7_imp::where('versions',$maxVersion[2])->get(),df8_imp::where('versions',$maxVersion[3])->get(),df9_imp::where('versions',$maxVersion[4])->get(),df10_imp::where('versions',$maxVersion[5])->get()];
    $MST = [mst_df5::all(),mst_df6::all(),mst_df7::all(),mst_df8::all(),mst_df9::all(),mst_df10::all()];
    $DFName = ['Threat Landscape','Compliance Req\'s','Role of IT','Sourcing Model for IT','IT Implementation Methods','Technology Adoption Strategy'];
    $DFMap = [df5_map::all(),df6_map::all(),df7_map::all(),df8_map::all(),df9_map::all(),df10_map::all()];
    $relative_imp = [calculate_relative_importance($Data[0],$DFMap[0],$MST[0],$GMO),calculate_relative_importance($Data[1],$DFMap[1],$MST[1],$GMO),calculate_relative_importance($Data[2],$DFMap[2],$MST[2],$GMO,true),calculate_relative_importance($Data[3],$DFMap[3],$MST[3],$GMO),calculate_relative_importance($Data[4],$DFMap[4],$MST[4],$GMO),calculate_relative_importance($Data[5],$DFMap[5],$MST[5],$GMO)];
    $weight = weight::orderBy('id')->get();
    $weight = [[$weight[0]->step_3_weight],[$weight[1]->step_3_weight],[$weight[2]->step_3_weight],[$weight[3]->step_3_weight],[$weight[4]->step_3_weight],[$weight[5]->step_3_weight]];
    $relative_imp = transposeMatrix($relative_imp);
    $tmp_data = multiplyMatrices($relative_imp,$weight);
    
    $temp_data = [];
    $i = 0;
    foreach($tmp_data as $row){
        $temp_data[] = [$tmp_data_[$i][0]+$tmp_data[$i][0]];
        $i++;
    }
    // dd($temp_data);

    $max  = max(abs(max($temp_data)[0]),abs(min($temp_data)[0]));
    $FinalData = [];
    foreach($temp_data as $row){
        $FinalData[] = round(floor(100*$row[0]/$max)/5)*5;
    }
    return view("DF/step_3_summary",["judul"=> "Design Factor","head"=>"Design Factor","GMO"=>$GMO,"all_relative_imp"=>$relative_imp,"FinalData"=>$FinalData,"DFName"=>$DFName,"weight"=>$weight]);
    }



}
