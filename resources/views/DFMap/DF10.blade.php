@extends('Main.header')

@section('result')

@include('Partials.Offcanvas')
@include('Partials.Step3')
<h1 class="gmo">Design Factor 10 Explanation</h1>
<div class="container p-5"><b><u>Technology adoption strategy</u></b> - The technology adoption strategy can be classified as listed on below table</div>

@php
    showTable($MST,['dimension','explanation']);
@endphp

<h1 class="gmo">Design Factor 10 Map Tables</h1>
@php
showTableMap($DF_Map,$MST,$GMO,10,['dimension','id_gmo']);
@endphp


@endsection