<div class="offcanvas offcanvas-start" id="demo">
    <div class="offcanvas-header">
      <h1 class="offcanvas-title">Step X summary</h1>
      <button type="button" class="btn-close" data-bs-dismiss="offcanvas"></button>
    </div>

    <div class="offcanvas-body">
        <h5> Step 1 :</h5>
        {{-- <button style="font-size:14px" class="btn btn-primary" type="button">Understand the enterprise context and strategy</button> --}}
        <a class="btn btn-primary" href="{{route('DFMap','')}}" role="button">Understand the enterprise context and strategy</a>
        <br> <br>
        <h5>Step 2 :</h5>
        <div class="btn-group">
            <button style="font-size:14px" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">Determine the initial scope of the governance system.</button>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="{{route('DFMap','DF1')}}">DF 1 Map</a>
              <a class="dropdown-item" href="{{route('DFMap','DF2')}}">DF 2 Map</a>
              <a class="dropdown-item" href="{{route('DFMap','DF3')}}">DF 3 Map</a>
              <a class="dropdown-item" href="{{route('DFMap','DF4')}}">DF 4 Map</a>
            </div>
        </div>
        <br><br>
        <h5>Step 3 :</h5>
        <div class="btn-group">
            <button style="font-size:14px" type="button" class="btn btn-primary dropdown-toggle" data-bs-toggle="dropdown">Determine the initial scope of the governance system.</button>
            <div class="dropdown-menu">
                <a class="dropdown-item" href="{{route('DFMap','DF5')}}">DF 5 Map</a>
                <a class="dropdown-item" href="{{route('DFMap','DF6')}}">DF 6 Map</a>
                <a class="dropdown-item" href="{{route('DFMap','DF7')}}">DF 7 Map</a>
                <a class="dropdown-item" href="{{route('DFMap','DF8')}}">DF 8 Map</a>
                <a class="dropdown-item" href="{{route('DFMap','DF9')}}">DF 9 Map</a>
                <a class="dropdown-item" href="{{route('DFMap','DF10')}}">DF 10 Map</a>
            </div>
        </div>
    </div>

</div>

<div class="container-fluid mt-3">
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#demo">
    Open Sidebar
</button>
</div>