@extends('Main.header')



@section('result')

    <div class="container-mt-4 p-5">
    <h1 class=gmo>Goverment Management Objectives</h1>
    <p>The governance and management objectives in COBIT are grouped into five domains. The domains have names with
        verbs that express the key purpose and areas of activity of the objective contained in them:</p>
    <ol>
        <li>Governance objectives are grouped in the Evaluate, Direct and Monitor (EDM) domain. In this domain, the
            governing body evaluates strategic options, directs senior management on the chosen strategic options and
            monitors the achievement of the strategy.</li>
        <li>Management objectives are grouped in four domains:
            <ul>
                <li>Align, Plan and Organize (APO) addresses the overall organization, strategy and supporting activities for I&T.</li>
                <li>Build, Acquire and Implement (BAI) treats the definition, acquisition and implementation of I&T solutions and
                    their integration in business processes.</li>
                <li>Deliver, Service and Support (DSS) addresses the operational delivery and support of I&T services, including
                    security.</li>
                <li>Monitor, Evaluate and Assess (MEA) addresses performance monitoring and conformance of I&T with internal
                    performance targets, internal control objectives and external requirements.</li>
            </ul>

        </li>
    </ol>
    <table class="gmo">
    <tr class=gmo> 
        <th class="gmo">No</th>
        <th class="gmo">GMO Code</th>
        <th class="gmo">dimension</th>
        <th class="gmo">Explanation</th>
    </tr>
    @php
        $i=1;
    @endphp
    @foreach($GMO as $row)
        <tr class="gmo">
            <td class="gmo">{{$i}}</td>
            <td class="gmo">{{$row->id_gmo}}</td>
            <td class="gmo">{{$row->dimension}}</td>
            <td class="gmo">{{$row->explanation}}</td>
        </tr>
        @php
            $i +=1
        @endphp
    @endforeach
    </table>
    </div>

    {{-- <div class="container-mt-3">
        <h1>Goverment Management Objectives</h1>
        <table style="width: 80%;" class="table table-bordered border-secondary">
        <thead class="table-light"> 
            <tr>
                <th scope="col">No</th>
                <th scope="col">GMO Code</th>
                <th scope="col">dimension</th>
                <th scope="col">Explanation</th>
            </tr>
        </thead>
        @php
            $i=1;
        @endphp
        <tbody>
            @foreach($GMO as $row)
                <tr>
                    <th scope="row">{{$i}}</th>
                    <td>{{$row->id_gmo}}</td>
                    <td>{{$row->dimension}}</td>
                    <td>{{$row->explanation}}</td>
                </tr>
                @php
                    $i +=1
                @endphp
            @endforeach
        </tbody>
        </table>
        </div> --}}
@endsection