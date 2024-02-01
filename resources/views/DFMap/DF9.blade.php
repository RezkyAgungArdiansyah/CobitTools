@extends('Main.header')

@section('result')

@include('Partials.Offcanvas')
@include('Partials.Step3')
<h1 class="gmo">Design Factor 9 Explanation</h1>
<div class="container p-5"><b><u>IT implementation method</u></b> - The methods the enterprise adopts can be classified as noted on below table</div>

@php
    showTable($MST,['IT Implementation Method','Explanation'],['dimension','explanation']);
@endphp

<h1 class="gmo">Design Factor 9 Map Tables</h1>
@php
showTableMap($DF_Map,$MST,$GMO,9,['dimension','id_gmo']);
@endphp


@endsection