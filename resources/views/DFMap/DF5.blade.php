@extends('Main.header')

@section('result')

@include('Partials.Offcanvas')
@include('Partials.Step3')
<h1 class="gmo">Design Factor 5 Explanation</h1>
@php
    showTable($MST,['Threat Lancscape','Explanation'],['dimension','explanation'],5);
@endphp

<h1 class="gmo">Design Factor 5 Map Tables</h1>
@php
showTableMap($DF_Map,$MST,$GMO,5,['dimension','id_gmo']);
@endphp


@endsection