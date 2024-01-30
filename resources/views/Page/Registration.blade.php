@extends('Main.header')

@section('result')

<main class="form-signin mt-5">
    <form action="/register" method="post" class="mt-2">
        @csrf
        <img class="mb-4 " src="img/logoCobit.png" alt="" width="120">
        <h1 class="h3 mb-3 fw-normal">Registration</h1>
        
        <div class="form-floating">
            <input type="text" name="name" class="form-control @error('name') is-invalid @enderror" id="floatingName" placeholder="Name" value="{{old('name')}}">
            <label for="floatingName">Name</label>
        </div class="invalid-feedback">
            @error('name') 
                {{$message}}
            @enderror
        </div>
        </div>

        <div class="form-floating">
            {{-- <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com"> --}}
            <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="floatingInput" placeholder="name@example.com" value="{{old('email')}}">
            <label for="floatingInput">Email address</label>
            <div class="invalid-feedback">
                @error('email') 
                {{$message}}
                @enderror
            </div>
        </div>

        <div class="form-floating">
            <input type="text" name="jabatan" class="form-control @error('jabatan') is-invalid @enderror" id="floatingJabatan" placeholder="jabatan" value="{{old('jabatan')}}">
            <label for="floatingJabatan">Jabatan</label>
            <div class="invalid-feedback">
                @error('jabatan') 
                {{$message}}
                @enderror
            </div>
        </div>

        <div class="form-floating">
            <input type="text" name="fungsi_jabatan" class="form-control @error('fungsi_jabatan') is-invalid @enderror" id="floatingFungsiJabatan" placeholder="FungsiJabatan" value="{{old('fungsi_jabatan')}}">
            <label for="floatingFungsiJabatan">Fungsi Jabatan</label>
            <div class="invalid-feedback">
                @error('fungsi_jabatan') 
                {{$message}}
                @enderror
            </div>
        </div>
        

        <div class="form-floating">
            <input type="text" name="atasan" class="form-control @error('atasan') is-invalid @enderror" id="floatingAtasan" placeholder="Atasan" value="{{old('atasan')}}">
            <label for="floatingAtasan">Atasan</label>
            <div class="invalid-feedback">
                @error('atasan') 
                {{$message}}
                @enderror
            </div>
        </div>
        

        <div class="form-floating">
            <input type="password" name="password" class="form-control @error('password') is-invalid @enderror" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
            <div class="invalid-feedback">
                @error('password') 
                {{$message}}
                @enderror
            </div>
        </div>
        

        <button class="w-100 btn btn-lg btn-primary" type="submit">Register</button>

    </form>
    <small>Registered ? <a href="/login">Login Now !</a></small>
</main>
  

@endsection