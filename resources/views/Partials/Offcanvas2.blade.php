<div class="offcanvas offcanvas-start" id="demo">
    <div class="offcanvas-header">
      <h1 class="offcanvas-title">Step X summary</h1>
      <button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
    </div>

    <div class="offcanvas-body">
        <h5> Step 1 :</h5>
        {{-- <button style="font-size:14px" class="btn btn-primary" type="button">Understand the enterprise context and strategy</button> --}}
        <a class="btn btn-primary" href="{{route('DF','')}}" role="button">Understand the enterprise context and strategy</a>
        <br> <br>
        <h5>Step 2 :</h5>
        <div class="btn-group">
            <button style="font-size:14px" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">Determine the initial scope of the governance system.</button>
            <div class="dropdown-menu">
              {{-- <a class="dropdown-item" href="{{route('Summary1')}}">Step 2 Summary</a> --}}
              <a class="dropdown-item" href="{{route('DF','DF1')}}">DF 1</a>
              <a class="dropdown-item" href="{{route('DF','DF2')}}">DF 2</a>
              <a class="dropdown-item" href="{{route('DF','DF3')}}">DF 3</a>
              <a class="dropdown-item" href="{{route('DF','DF4')}}">DF 4</a>
            </div>
        </div>
        <br><br>
        <h5>Step 3 :</h5>
        <div class="btn-group">
            <button style="font-size:14px" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">Determine the initial scope of the governance system.</button>
            <div class="dropdown-menu">
                {{-- <a class="dropdown-item" href="{{route('Summary2')}}">Step 3 Summary</a> --}}
                <a class="dropdown-item" href="{{route('DF','DF5')}}">DF 5</a>
                <a class="dropdown-item" href="{{route('DF','DF6')}}">DF 6</a>
                <a class="dropdown-item" href="{{route('DF','DF7')}}">DF 7</a>
                <a class="dropdown-item" href="{{route('DF','DF8')}}">DF 8</a>
                <a class="dropdown-item" href="{{route('DF','DF9')}}">DF 9</a>
                <a class="dropdown-item" href="{{route('DF','DF10')}}">DF 10</a>
            </div>
        </div>
    </div>

</div>

<div class="container-fluid mt-3">
    <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#demo">
        Open Sidebar
    </button>
</div>
