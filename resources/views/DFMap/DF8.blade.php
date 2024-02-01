@extends('Main.header')

@section('result')

@include('Partials.Offcanvas')
@include('Partials.Step3')
<h1 class="gmo">Design Factor 8 Explanation</h1>
<div class="container p-5"><b><u>Sourcing model for IT</u></b> - The sourcing model the enterprise adopts can be classified as shown on below table</div>

@php
    showTable($MST,['Sourcing Model','Explanation'],['dimension','explanation']);
@endphp

<h1 class="gmo">Design Factor 8 Map Tables</h1>
@php
showTableMap($DF_Map,$MST,$GMO,8,['dimension','id_gmo']);
@endphp


@endsection