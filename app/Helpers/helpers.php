<?php 
function chart($percents){    
    if ($percents < 0) {
        echo "<div class='col-sm-1'>$percents</div>";
        for($i=1;$i<=20-abs($percents/5);$i++){
            echo "<div class='col'></div>";}
        for($i=20-abs($percents/5);$i<=20;$i++){
            echo "<div class='col bg-primary'></div>";}
        for($i=21;$i<=40;$i++){
            echo "<div class='col'></div>";}
        }
    elseif ($percents > 0) {
        
        echo "<div class='col-sm-1'>". $percents ."</div>";
        for($i=1;$i<=22;$i++){
            echo "<div class='col'></div>";}
        for($i=20;$i<=20+$percents/5;$i++){
            echo "<div class='col bg-primary'></div>";}
        for($i=21+$percents/5;$i<=40;$i++){
            echo "<div class='col'></div>";}
    }
    else {
        echo "<div class='col-sm-1'>". $percents ."</div>";
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
    echo "<div class='container-mt-6'>";
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

?>