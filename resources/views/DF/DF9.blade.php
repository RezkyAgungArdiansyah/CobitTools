@extends('Main.header')

@section('result')
    <div class="container-fluid border bg-secondary text-center mt-2">
        <h3> Input Section - Importance of Each {{$DFName}}</h3>
    </div>
    @include('Partials.Offcanvas2')
    
    @php
    showDFtable($MST,$Data,['Value','Importance','Baseline'],['dimension','importance','baseline'],9);
    $relative_imp = calculate_relative_importance($Data,$DFMap,$MST,$GMO);
    // print_r($relative_imp);
    @endphp
    <div class="container-fluid border bg-secondary text-center mt-5">
        <h3>Design Factor 9 {{$DFName}} Resulting Governance/Management Objetives Importance</h3>
    </div>
    @php
    show_relative_imp_table($GMO,$relative_imp)
    @endphp

@endsection