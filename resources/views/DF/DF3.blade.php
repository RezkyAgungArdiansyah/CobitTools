@extends('Main.header')

@section('result')
    <div class="container-fluid border bg-secondary text-center mt-2">
        <h3> Input Section - Importance of Each {{$DFName}}</h3>
    </div>
    @include('Partials.Offcanvas2')
    <div style='width:80%' class='container mt-4'>
        <form id="myForm" action="/DF/{{$slug}}" method='post'>
        @csrf
    @php
    showDFtable($MST,$Data,['Value','Impact','Likelihood','Risk Rating','Baseline'],['dimension','impact','likelihood','risk_rating','baseline'],3,$max,$version_name);
    $relative_imp = calculate_relative_importance($Data,$DFMap,$MST,$GMO,true,slug:'DF3');
    @endphp
    <div class="container-fluid border bg-secondary text-center mt-5">
        <h3>Design Factor 3 {{$DFName}} Resulting Governance/Management Objetives Importance</h3>
    </div>
    @php
    show_relative_imp_table($GMO,$relative_imp)
    @endphp
@endsection