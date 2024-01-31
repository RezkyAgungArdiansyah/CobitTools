<?php 
function chart($percents){    
    if ($percents < 0) {
        echo "<div style='width:34px;' class='col-sm-1 text-end border me-1'>$percents</div>";
        for($i=1;$i<=20-abs($percents/5);$i++){
            echo "<div class='col'></div>";}
        for($i=20-abs($percents/5);$i<=20;$i++){
            echo "<div class='col bg-danger'></div>";
        }
        for($i=21;$i<=40;$i++){
            echo "<div class='col'></div>";}
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

function showTable($table, $columns) {
    // @dd($table);
    echo "<div class='container'>";
    echo "<table class='gmo'>";
    
    echo "<tr class='gmo'>" ;
    echo "<th class='gmo'>NO</th>";
    foreach($columns as $column){
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
    // @dd($DF_Map);
    $x = $Arr[0];
    $y = $Arr[1];
    echo "<div style='overflow:auto;' class='container-mt-6 px-4'>";
    echo "<table style='overflow:scroll;' class='gmo'>";
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
    echo "</div>";
}

function showDFtable($MST,$Data,$Headers,$DBColumns,$n){
$l = count($Headers);

echo "<div style='width:80%' class='container mt-4 border'>";
    echo "<table class='gmo'>";
        echo "<tr class='gmo'>";
        foreach($Headers as $Head){
            echo "<th class='gmo'>$Head</th>";
        }
        echo "</tr>";
        $i = 0;
        foreach($MST->sortBy('id_df'.$n) as $row){
            echo "<tr class='gmo'>";
            echo "<td class='gmo'>".$row->{$DBColumns[0]}."</td>";
            foreach(array_slice($DBColumns,1) as $column){
            echo "<td class='gmo'>".$Data->get($i)->$column ."</td>";
            }
            echo "</tr>";
        $i++;
        }
    echo "</table>";
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
    $transposedMatrix = [];

    foreach ($matrix as $rowIndex => $row) {
        foreach ($row as $colIndex => $value) {
            $transposedMatrix[$colIndex][$rowIndex] = $value;
        }
    }

    return $transposedMatrix;
}

function calculate_relative_importance($Data,$DFMap,$MST,$GMO,$use_cor = false, $slug = ''){
    if($slug != 'DF2'){
        $Data_ = to_array($Data,['importance','baseline']);
        // print_r($Data);
        $DFMap_ = to_array_reshape($DFMap,40);
        // print_r($DFMap);
        $Outputs = multiplyMatrices($DFMap_,$Data_);}
    else{
        $Data_ = to_array($Data,['importance','baseline']); // I = 13 x 2
        $Data_ = transposeMatrix($Data_); // I = 2 x 13
        $DFMap_1 = to_array_reshape($DFMap[0],13); // M1 = 13 x 13
        $DFMap_2 = to_array_reshape($DFMap[1],13); // M2 = 13 x 40
        $Outputs = multiplyMatrices($Data_,$DFMap_1);
        $Outputs = multiplyMatrices($Outputs,$DFMap_2);
        $Outputs = transposeMatrix($Outputs);
    }
    if($use_cor){
        $avg_imp = $Data->avg('importance');
        $avg_baseline = $Data->avg('baseline');
        $cor_factor = $avg_baseline/$avg_imp;
        $relative_imp = [];
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
    echo "<div style='width:80%' class='container my-5'>";
    $i = 0;
    foreach($GMO as $gmo){
        echo "<div type='button' class='d-flex flex-row' data-bs-toggle='collapse' data-bs-target='#demo_$i'>";
        echo "<div class='col-sm-1 pe-2'>>".$gmo->id_gmo."</div>";
        echo "<div class='col-sm-5'>".$gmo->dimension."</div>";
        chart($relative_imp[$i]);
        echo "</div>";
        echo "<div id='demo_$i' class='collapse'><p>".$gmo->explanation."</p></div>";
    $i++;
    }
    echo "</div>";

}
?>