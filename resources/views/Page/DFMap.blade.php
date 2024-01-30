@extends('Main.header')

@section('result')

@include('Partials.Offcanvas')

<div class="container px-5">
<h3>Step 1 : Understand the enterprise context and strategy.</h3>
<ol>
    <li>Understand enterprise strategy</li>
    <li>Understand enterprise goals</li>
    <li>Understand the risk profile</li>
    <li>Understand current I&T related issues</li>
</ol>
</div>

@include('Partials.step2')
@include('Partials.step3')
@endsection