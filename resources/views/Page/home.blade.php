

@extends('Main.header')

@section('result')

{{-- Step 2 Summary --}}
<div class="contrainer-fluid">
    <h3>Step 2 Summary</h3>
</div>
<div class="container border my-3">
    <div class="container-fluid bg-secondary">
        <h4 style='text-align:center;'>Step 2 : Determine initial scope of the Governance System</h4>
    </div>

    <div class='d-flex flex-row my-1 border'>
        <div style="vertical-align:middle;" class="col-sm-6  text-center">Design Factors</div>
        @for($i=0;$i<4;$i++)
            <div class="col-sm-1">{{$DFName[0][$i]}}</div>
        @endfor
        <div class="col-sm">Initial Scope: Governance/ Management Objectives Score</div>
    </div>
    <form action="{{route('Home')}}" method="post" id="form_1">
    @csrf
        <div class="d-flex flex-row border">
            <div class="col-sm-6 text-end">
                Weight
            </div>
            @for($i=0;$i<4;$i++)
                <div class="col-sm-1 text-center border">
                <input name="input[{{$i}}]" style="text-align:center;padding-left:15px;border:none;test-" type="number" value="{{$weight[0][$i][0]}}" min="1" max="6" required>
                </div>
            @endfor
            <button type='submit' class='container btn btn-secondary'>Calculate</button>
        </div>
    </form>

    @for($i=0;$i<40;$i++)
    <div style='cursor:pointer;transition:background-color 0.3s;' type='button' class='d-flex flex-row my-1' data-bs-toggle='collapse' data-bs-target='#row_{{$i}}' onmouseover="this.style.backgroundColor='#a0a0a0'" onmouseout="this.style.backgroundColor='#ffffff00'">
            <div class="col-sm-1">{{$GMO[$i]->id_gmo}}</div>
            <div class="col-sm-5">{{$GMO[$i]->dimension}}</div>
            @for($j=0;$j<4;$j++)

            <div @if($all_relative_imp[0][$i][$j] < 0) {!!"style='color:red;'"!!} @endif class="col-sm-1 text-center border">{{$all_relative_imp[0][$i][$j]}}</div>
            @endfor
            @php chart($FinalData[0][$i]) @endphp
    </div>
    <div id='row_{{$i}}' class='collapse'><p>{{$GMO[$i]->explanation}}</p></div>
    @endfor
</div>
{{-- Step 3 Summary --}}
<div class="container-fluid">
    <h3>Step 3 Summary</h3>
</div>

<div class="container-fluid border m-1">
    <div class="container-fluid bg-secondary">
        <h4 style='text-align:center;'>Step 3 : Refine the scope of the Governance System</h4>
    </div>

    <div class='d-flex flex-row mt-1 border'>
        <div style="width:453px" class="col-sm-4 text-center">Design Factors</div>
        @for($i=0;$i<6;$i++)
            <div class="col-sm-1">{{$DFName[1][$i]}}</div>
        @endfor
        <div class="col">Refined Scope: Governance/ Management Objectives Score</div>
    </div>
    <form action="{{route('Home')}}" method="post" id="form_2">
        @csrf
        <div class="d-flex flex-row border">
            <div style="width:454px" class="col-sm-4 text-end">
                Weight
            </div>
            @for($i=0;$i<6;$i++)
                <div class="col-sm-1 text-center border">
                <input name="input_[{{$i}}]" style="text-align:center;padding-left:15px;border:none;test-" type="number" value="{{$weight[1][$i][0]}}" min="1" max="6" required>
                </div>
            @endfor
            <button type='submit' class='container btn btn-secondary'>Calculate</button>
        </div>
    </form>
        @for($i=0;$i<40;$i++)
        <div style='cursor:pointer;transition:background-color 0.3s;' type='button' class='d-flex flex-row my-1' data-bs-toggle='collapse' data-bs-target='#row__{{$i}}' onmouseover="this.style.backgroundColor='#a0a0a0'" onmouseout="this.style.backgroundColor='#ffffff00'">
                <div style="width:55px" class="col-sm-1">{{$GMO[$i]->id_gmo}}</div>
                <div style="width:400px" class="col-sm-4">{{$GMO[$i]->dimension}}</div>
                @for($j=0;$j<6;$j++)
                <div @if($all_relative_imp[1][$i][$j] < 0) {!!"style='color:red;'"!!} @endif class="col-sm-1 text-center border">{{$all_relative_imp[1][$i][$j]}}</div>
                @endfor
                @php chart($FinalData[1][$i]); @endphp
        </div>
        <div id='row__{{$i}}' class='collapse'><p>{{$GMO[$i]->explanation}}</p></div>
        @endfor
</div>
    
@endsection