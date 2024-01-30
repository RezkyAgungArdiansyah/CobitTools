@extends('Main.header')

@section('result')

@include('Partials.Offcanvas')
@include('Partials.Step2')
<h1 class="gmo">Design Factor 3 Explanation</h1>
<div class="container p-5"> <b><u>Risk profile</u></b> - of the enterprise and current issues in relation to I&T—The risk profile identifies the sort of I&Trelated
    risk to which the enterprise is currently exposed and indicates which areas of risk are exceeding the risk
    appetite. The risk categories listed on below table merit consideration.</div>

@php
    showTable($MST,['dimension']);
@endphp

<h1 class="gmo">Design Factor 3 Map Tables</h1>
@php
showTableMap($DF_Map,$MST,$GMO,3,['dimension','id_gmo']);
@endphp


@endsection