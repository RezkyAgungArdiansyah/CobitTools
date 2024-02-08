@extends('Main.header')

@section('result')

@include('Partials.Offcanvas')
@include('Partials.Step2')
<h1 class="gmo">Design Factor 4 Explanation</h1>
<div class="container p-5"><b><u>I&T Related Issues</u></b> - A related method for an I&T risk assessment for the enterprise is to consider which I&Trelated
    issues it currently faces, or, in other words, what I&T-related risk has materialized. The most common of such issues include on below table</div>
@php
    showTable($MST,['Description'],['dimension'],4);
@endphp

<h1 class="gmo">Design Factor 4 Map Tables</h1>
@php
showTableMap($DF_Map,$MST,$GMO,4,['dimension','id_gmo']);
@endphp


@endsection