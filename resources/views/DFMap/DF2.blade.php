@extends('Main.header')

@section('result')

@include('Partials.Offcanvas')
@include('Partials.Step2')
<h1 class="gmo">Design Factor 2 Explanation</h1>
@php
    showTable($MST[0],['AG ID','Explanation'],['id_ag','dimension']);
    showTable($MST[1],['EG ID','Explanation'],['id_eg','dimension']);
@endphp

<h1 class="gmo">Design Factor 2 Map Tables</h1>
@php
    showTableMap($DF_Map[0],$MST[0],$MST[1],2,['id_ag','id_eg']);
    showTableMap($DF_Map[1],$MST[2],$MST[0],2,['id_gmo','id_ag']);
@endphp


@endsection