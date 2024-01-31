

@extends('Main.header')

@section('result')
    <div style="width:65%" class="container my-5">
        <div type="button" class="d-flex flex-row" data-bs-toggle="collapse" data-bs-target="#demo_1">
            <div class="pe-2">>EDM01</div>
            <div class="col-sm- border">Ensured governance framework setting and maintance</div>
            {!!chart(-100)!!}
        </div>
        <div id="demo_1" class="collapse"><p>Provide a consistent approach, integrated and aligned with the enterprise governance approach. I&T-related decisions must be made in line with the enterprise’s strategies and objectives and desired value is realized. To that end, ensure that I&T-related processes are overseen effectively and transparently; compliance with legal, contractual and regulatory requirements is confirmed; and the governance requirements for board members are met.</p></div>
    </div>
@endsection