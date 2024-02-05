@extends('Main.header')

@section('result')

<main class="form-signin mt-5">
  {{-- <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com"> --}}
    @if(session()->has('Registered'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
          {{session('Registered')}}
          <button style="float: right;" type="button" class="btn-close-bs-dismiss" data-bs-dismiss="alert" aria-label="Close">x</button>
        </div>
      @endif
      @if(session()->has('loginError'))
        <div class="alert alert-danger alert-dismissible fade show" role="alert">
          {{session('loginError')}}
          <button style="float: right;" type="button" class="btn-close-bs-dismiss" data-bs-dismiss="alert" aria-label="Close">x</button>
        </div>
      @endif
    <form class="mt-2" action="/login" method="post">
      @csrf
      <img class="mb-4 " src="img/logoCobit.png" alt="" width="120">
      <h1 class="h3 mb-3 fw-normal">Please login</h1>      
      
      <div class="form-floating">  
        <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" autofocus required value="{{old('email')}}">
        <label for="email">Email address</label>
        @error('email')<div class="invalid-feedback">{{$message}}</div>@enderror
      </div>

      <div class="form-floating">
        <input type="password" name="password" class="form-control @error('password') is-invalid @enderror" id="floatingPassword" placeholder="Password" required>
        <label for="floatingPassword">Password</label>
        @error('password')<div class="invalid-feedback">{{$message}}</div>@enderror
      </div>

      <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
    </form>
    <small>Not registered ? <a href="/register">Register Now !</a></small>
  </main>
  

@endsection