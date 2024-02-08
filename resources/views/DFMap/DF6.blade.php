@extends('Main.header')

@section('result')

@include('Partials.Offcanvas')
@include('Partials.Step3')
<h1 class="gmo">Design Factor 6 Explanation</h1>
@php
    showTable($MST,['Regulatory Environment','Explanation'],['dimension','explanation'],6);
@endphp

<h1 class="gmo">Design Factor 6 Map Tables</h1>
@php
showTableMap($DF_Map,$MST,$GMO,6,['dimension','id_gmo']);
@endphp


@endsection