@extends('Main.header')

@section('result')
    <div class="container-fluid border bg-secondary text-center mt-2">
        <h3> Input Section - Importance of Each {{$DFName}}</h3>
    </div>
    @include('Partials.Offcanvas2')
    
    <div style='width:80%' class='container mt-4'>
        @if(session()->has('Sum_Error_not_100%'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
          {{session('Sum_Error_not_100%')}}
          <button style="float: right;" type="button" class="btn-close-bs-dismiss" data-bs-dismiss="alert" aria-label="Close">x</button>
        </div>
        @endif
        <form id="myForm" action="/DF/{{$slug}}" method='post'>
        @csrf
    @php
    showDFtable($MST,$Data,['Value','Importance','Baseline'],['dimension','importance','baseline'],5,$max,$version_name);
    $relative_imp = calculate_relative_importance($Data,$DFMap,$MST,$GMO);
    // print_r($relative_imp);
    @endphp
    <div class="container-fluid border bg-secondary text-center mt-5">
        <h3>Design Factor 5 {{$DFName}} Resulting Governance/Management Objetives Importance</h3>
    </div>
    @php
    show_relative_imp_table($GMO,$relative_imp)
    @endphp

@endsection