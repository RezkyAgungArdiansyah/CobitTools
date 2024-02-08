@extends('Main.header')

@section('result')

@include('Partials.Offcanvas')

@include('Partials.Step2')
<h1 class="gmo">Design Factor 1 Explanation</h1>
<div class="container p-5">
<b> <u> Enterprise strategy </u></b> — Enterprises can have different strategies, which can be expressed as one or more of the
archetypes shown below table. Organizations typically have a primary strategy and, at most, one secondary strategy.</div>

@if(auth()->user()->role == 'superadmin')
    <form action='{{route('DFMap','DF1')}}' method='post'>
@endif

@php
    showTable($MST,['Strategy Archtype','Explanation'],['dimension','explanation'],1);
@endphp

<h1 class="gmo">Design Factor 1 Map Tables</h1>
@php
showTableMap($DF_Map,$MST,$GMO,1,['dimension','id_gmo']);
@endphp

@if(auth()->user()->role == 'superadmin')
</form>
@endif

@endsection
