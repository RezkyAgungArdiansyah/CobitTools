{{-- @extends('Main.header')

@section('result')
@include('Partials.Offcanvas2')

<div class="container-fluid border m-1">
    <div class="container-fluid bg-secondary">
        <h4 style='text-align:center;'>Step 3 : Refine the scope of the Governance System</h4>
    </div>

    <div class='d-flex flex-row mt-1 border'>
        <div style="width:453px" class="col-sm-4 text-center">Design Factors</div>
        @for($i=0;$i<6;$i++)
            <div class="col-sm-1">{{$DFName[$i]}}</div>
        @endfor
        <div class="col-sm">Refined Scope: Governance/ Management Objectives Score</div>
    </div>
    <div class="d-flex flex-row border">
        <div  style="width:454px" class="col-sm-4 text-end">
            Weight
        </div>
        @for($i=0;$i<6;$i++)
        <div class="col-sm-1 text-center">
            1
        </div>
        @endfor
    </div>
        @for($i=0;$i<40;$i++)
        <div style='cursor:pointer;transition:background-color 0.3s;' type='button' class='d-flex flex-row my-1' data-bs-toggle='collapse' data-bs-target='#row_{{$i}}' onmouseover="this.style.backgroundColor='#a0a0a0'" onmouseout="this.style.backgroundColor='#ffffff00'">
                <div style="width:55px" class="col-sm-1">{{$GMO[$i]->id_gmo}}</div>
                <div style="width:400px" class="col-sm-4">{{$GMO[$i]->dimension}}</div>
                @for($j=0;$j<6;$j++)
                <div class="col-sm-1 text-center border">{{$all_relative_imp[$i][$j]}}</div>
                @endfor
                @php chart($FinalData[$i]) @endphp
        </div>
        <div id='row_{{$i}}' class='collapse'><p>{{$GMO[$i]->explanation}}</p></div>
        @endfor
</div>

@endsection --}}