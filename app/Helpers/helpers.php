<?php
function chart($percents){    
    //this function need input a number i.e $percents then it will return a horizontal bar
    //this function is needs as sub function for show_relative_imp_table
    if ($percents < 0) {
        echo "<div style='width:34px;' class='col-sm-1 text-end border'>$percents</div>";
        for($i=1;$i<=20-abs($percents/5);$i++){
            echo "<div class='col'></div>";}
        for($i=20-abs($percents/5);$i<=20;$i++){
            echo "<div class='col bg-danger'></div>";
        }
        for($i=21;$i<=40;$i++){
            echo "<div class='col'></div>";
            }
        }
    elseif ($percents > 0) {
        
        echo "<div style='width:34px;' class='col-sm-1 text-end border'>". $percents ."</div>";
        for($i=1;$i<=22;$i++){
            echo "<div class='col'></div>";}
        for($i=20;$i<=20+$percents/5;$i++){
            echo "<div class='col bg-primary'></div>";}
        for($i=21+$percents/5;$i<=40;$i++){
            echo "<div class='col'></div>";}
    }
    else {
        echo "<div style='width:34px' class='col-sm-1 text-end border'>". $percents ."</div>";
        echo  "<div class='col'></div>";
    }
}

function showTable($table,$shown_columns ,$columns) {
    // this function is used to show first table on "Design Factor Map X" menu
    //this function only show table on Database on the chosen column
    
    // it require input $table from database, $columns on the chosen columns what we want to show
    // on the other hand it's same as we query SELECT on database but only can choose the column
    echo "<div class='container'>";
    echo "<table class='gmo'>";
    
    echo "<tr class='gmo'>" ;
    echo "<th class='gmo'>NO</th>";
    foreach($shown_columns as $column){
        echo "<th class='gmo'>$column</th>";
    }
    echo "</tr>";
    $i =1;
    foreach($table as $row){
        echo "<tr class='gmo'>";
        echo "<td class='gmo'>$i</td>";
        foreach($columns as $column){
            echo "<td style='text-align:left;' class='gmo'>{$row->$column}</td>";
        }
        echo "</tr>";
        $i++;
    }

    echo "</table>"; 
    echo "</div>";
}

function showTableMap($DF_Map,$Header_Name,$ID_Name,$i, $Arr){
    // this function is used to show second table on "Design Factor Map X" menu
    // this function quitely different on the previous one, since the data on data base are only a vector
    // then it's reshape the input such that it, display same on cobit tools excel

    // it  requires input 
    // $DF_Map on database
    // $Header_Name for first headers name on shown table
    // $ID_Name for the first column i.e DF1
    // $i what DF ? DF1 -> $i = 1, DF2 -> $i =2
    // $Arr is column name on database e.g usually use ['dimension','explanation']
    $x = $Arr[0];
    $y = $Arr[1];
    echo "<table class='gmo'>";
    echo "<tr class='gmo'>";
    echo "<th class='gmo'>DF$i</td>";
    foreach($Header_Name as $column){
        echo "<th class='gmo'>{$column->$x}</td>";
    }
    echo "</tr>";
    $i = 0;
    $rep = count($ID_Name);
    foreach($ID_Name as $row){
        echo "<tr class='gmo'>";
        echo "<td class='gmo'>{$row->$y}</td>";
        for ($j=0; $j < count($Header_Name); $j++) { 
            echo "<td class='gmo'>{$DF_Map[$i + $j*$rep]->relevance}</td>";
        }
        echo "</tr>";
        $i++;
    }
    echo "</table>";
}

function showDFtable($MST,$Data,$Headers,$DBColumns,$n,$max){
$l = count($Headers);
    echo "<table class='gmo'>";
        echo "<tr class='gmo'>";
        foreach($Headers as $Head){
            echo "<th class='gmo'>$Head</th>";
        }
        echo "</tr>";
        $i = 0;
        foreach($MST->sortBy('id_df'.$n) as $row){
            echo "<tr class='gmo'>";
            echo "<td style='text-align:left' class='gmo'>".$row->{$DBColumns[0]}."</td>";
            $j = 0;
            foreach(array_slice($DBColumns,1) as $column){
                if(in_array($n,[1,2,7])){echo "<td class='gmo'><input name='input[$i][$j]' style='text-align:center;padding-left:15px;border:none;' type='number' value='".$Data->get($i)->$column."' min='1' max='5' required "; 
                    if($column == 'baseline'){echo "readonly";}
                    echo "></td>";}
                elseif($n == 4){echo "<td class='gmo'><input name='input[$i][$j]' style='text-align:center;padding-left:15px;border:none;' type='number' value='".$Data->get($i)->$column."' min='1' max='3' required></td>";}
                elseif(in_array($n,[5,6,8,9,10])){echo "<td class='gmo'><input name='input[$i][$j]' style='text-align:center;padding-left:15px;border:none;' type='number' value='".$Data->get($i)->$column."' min='0' max='100' required";
                    if($column == 'baseline'){echo " readonly";}
                    echo "></td>";}
                else{
                    if(in_array($column,['impact','likelihood'])){ echo "<td class='gmo'><input id='$i $j' name='input[$i][$j]' style='text-align:center;padding-left:15px;border:none;' type='number' value='".$Data->get($i)->$column."' onchange=\"document.getElementById('rr_$i').value = document.getElementById('$i 0').value * document.getElementById('$i 1').value;\"  min='1' max='5' required></td>";}
                    elseif($column == 'risk_rating'){echo "<td class='gmo'><input id='rr_$i' name='input[$i][$j]' style='text-align:center;padding-left:15px;border:none;' type='number' value='".$Data->get($i)->$column."' min='1' max='25' required readonly></td>";}
                    else{echo "<td class='gmo'><input name='input[$i][$j]' style='text-align:center;padding-left:15px;border:none;' type='number' value='".$Data->get($i)->$column."' min='1' max='25' required></td>";}
                }
                $j++;
            }
        echo "</tr>";
        $i++;
        }
    echo "<tr class='gmo'>";
    echo "<td style='text-align:center' class='gmo'>
    <div class='btn-group container-fluid px-0'>
        <button type='button' class='btn btn-secondary dropdown-toggle' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>Choose Version</button>";
    echo "<div class='dropdown-menu dropdown-menu-right'>";
    foreach( range(1,$max) as $i){
    echo "<a class='dropdown-item' href='". route('DFX',['slug'=> 'DF'.$n, 'version' => 'Version_'.$i])."'>V$i</a>";}
    echo "</div> </td>";
    echo "<td colspan='".(count($Headers)-1)."' class='gmo'><button type='submit' class='container btn btn-secondary'>Submit</button></td>";
    echo "</tr>";
    echo "</table>";
    echo "</form>";
echo "</div>";
}

function to_array_reshape($DFMap,$divisor){
    $arr1 =[]; 
        $n = count($DFMap)/$divisor;

        for($i =0;$i<$divisor;$i++){
            $arr2 = [];
            for($j=0;$j<$n;$j++){
                $arr2[] = $DFMap->get($i+$divisor*$j)->relevance;
            }
            $arr1[] = $arr2;
        }
        return $arr1;}

function to_array($Data,$columns){
    $arr1 = [];
        foreach($Data as $data){
            $arr2 = [];
            foreach($columns as $column){
                $arr2[] = $data->$column;
            }
        $arr1[] = $arr2;
        }
        return $arr1;
    }

function multiplyMatrices($matrix1, $matrix2) {
    $result = [];

    $rows1 = count($matrix1);
    $cols1 = count($matrix1[0]);
    $rows2 = count($matrix2);
    $cols2 = count($matrix2[0]);

    // Check if matrices can be multiplied
    if ($cols1 !== $rows2) {
        return "Matrices cannot be multiplied. Column count of the first matrix must match the row count of the second matrix.";
    }

    // Initialize result matrix with zeros
    for ($i = 0; $i < $rows1; $i++) {
        for ($j = 0; $j < $cols2; $j++) {
            $result[$i][$j] = 0;
        }
    }

    // Multiply matrices
    for ($i = 0; $i < $rows1; $i++) {
        for ($j = 0; $j < $cols2; $j++) {
            for ($k = 0; $k < $cols1; $k++) {
                $result[$i][$j] += $matrix1[$i][$k] * $matrix2[$k][$j];
            }
        }
    }

    return $result;
}

function transposeMatrix($matrix) {
    // a simple function to transpose matrice
    // the input is n x m matrices and the output will be m x n matrices
    $transposedMatrix = [];

    foreach ($matrix as $rowIndex => $row) {
        foreach ($row as $colIndex => $value) {
            $transposedMatrix[$colIndex][$rowIndex] = $value;
        }
    }

    return $transposedMatrix;
}

function calculate_relative_importance($Data,$DFMap,$MST,$GMO,bool $use_cor = false, $slug = ''){
// this function will give output an one dimension with length 40, 
// this function is neccesary for input on below function i.e show_ relative importance
// $Data is input as on excel
// $DFMap 
    if($slug != 'DF2'){
        //give 2 x 40 outputs matrices
        if($slug != 'DF3'){$Data_ = to_array($Data,['importance','baseline']);}
        else{$Data_ = to_array($Data,['risk_rating','baseline']);}
        // reshape database column from 1 x n*40 to n x 40 matrices
        $DFMap_ = to_array_reshape($DFMap,40);
        // the outputs is only normal multiply the given matrices then the first column is for importance and the second is for the baseline importance
        $Outputs = multiplyMatrices($DFMap_,$Data_);}
    else{  // for DF2 only
        $Data_ = to_array($Data,['importance','baseline']); // I = 13 x 2
        $Data_ = transposeMatrix($Data_); // I = 2 x 13
        $DFMap_1 = to_array_reshape($DFMap[0],13); // M1 = 13 x 13
        $DFMap_2 = to_array_reshape($DFMap[1],13); // M2 = 13 x 40
        $Outputs = multiplyMatrices($Data_,$DFMap_1);
        $Outputs = multiplyMatrices($Outputs,$DFMap_2);
        $Outputs = transposeMatrix($Outputs);
    }
    if($use_cor){
        if($slug != 'DF3'){$avg_imp = $Data->avg('importance');}
        else{$avg_imp = $Data->avg('risk_rating');}
        $avg_baseline = $Data->avg('baseline');
        $cor_factor = $avg_baseline/$avg_imp;
        $relative_imp = [];
        // dd($Outputs);
        foreach($Outputs as $output){
            $relative_imp[] = round(($cor_factor*($output[0]/$output[1])*100-100)/5)*5;
        }
    }
    
    else
    {
        foreach($Outputs as $output){
            $relative_imp[] = round((($output[0]/$output[1])*100-100)/5)*5;
        }
    }
    return $relative_imp;
}

function show_relative_imp_table($GMO,$relative_imp){
// this function will give outputs horizontal bar chart that we can click it for each row, if neccesary more information
// $GMO base on Database which have column id as primary key,id_gmo, dimension, and explanation
// $relative_imp is only one dimension array with length 40
    echo "<div style='width:80%;' class='container my-5 border' id='main_table'>";
    $i = 0;
    foreach($GMO as $gmo){
        echo "<div style='cursor:pointer;transition:background-color 0.3s;' type='button' class='d-flex flex-row my-1' data-bs-toggle='collapse' data-bs-target='#row_$i' onmouseover=\"this.style.backgroundColor='#a0a0a0'\" onmouseout=\"this.style.backgroundColor='#ffffff00'\">";
        // echo "<div type='button' class='d-flex flex-row my-1' data-bs-toggle='collapse' data-bs-target='#row_$i'>";
        echo "<div class='col-sm-1 pe-2'>>".$gmo->id_gmo."</div>";
        echo "<div class='col-sm-5'>".$gmo->dimension."</div>";
        chart($relative_imp[$i]);
        echo "</div>";
        echo "<div id='row_$i' class='collapse'><p>".$gmo->explanation."</p></div>";
    $i++;
    }
    echo "</div>";

}
?>