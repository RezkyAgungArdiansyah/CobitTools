@extends('Main.header')

@section('result')

@include('Partials.Offcanvas')
@include('Partials.Step3')
<h1 class="gmo">Design Factor 7 Explanation</h1>
<div class="container p-5"><b><u>Role of IT</u></b> The role of IT for the enterprise can be classified as indicated below table</div>
@php
    showTable($MST,['dimension','explanation']);
@endphp

<h1 class="gmo">Design Factor 7 Map Tables</h1>
@php
showTableMap($DF_Map,$MST,$GMO,7,['dimension','id_gmo']);
@endphp


@endsection