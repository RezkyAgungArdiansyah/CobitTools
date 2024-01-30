@extends('Main.header')

@section('result')
    <div class="container-fluid border bg-secondary text-center mt-2">
        <h3> Input Section - Importance of Each {{$DFName}}</h3>
    </div>
    @include('Partials.Offcanvas2')
    
    @php
    showDFtable($MST,$Data,['Value','Importance','Baseline'],['dimension','importance','baseline'],10);
    @endphp
@endsection