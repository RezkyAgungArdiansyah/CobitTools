<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    
    <title>{{$judul}}</title><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        h1.gmo {
            text-align: center;
            color: #333;}
        
        table.gmo {
            border-collapse: collapse;
            width: auto;
            margin: 20px auto;
        }
        td.gmo {
            border: 1px solid #ddd;
            padding: 4px;
            text-align: center;
        }
        th.gmo {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
            background-color: #f2f2f2;}
            
        .form-signin {
          width: 100%;
          max-width: 330px;
          padding: 15px;
          margin: auto;
        }

        .form-signin .checkbox {
          font-weight: 400;
        }

        .form-signin .form-floating:focus-within {
          z-index: 2;
        }

        .form-signin input[type="email"] {
          margin-bottom: -1px;
          border-bottom-right-radius: 0;
          border-bottom-left-radius: 0;
        }

        .form-signin input[type="password"] {
          margin-bottom: 10px;
          border-top-left-radius: 0;
          border-top-right-radius: 0;
        }
    </style>
    {{-- Bootstrap Core --}}
    <link href="/docs/5.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    {{-- Bootstrap Icon --}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    {{-- Bootstrap JS --}}
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script>
    function confirmSubmit() {
    // Display a confirmation dialog
    var result = window.confirm("Are you sure you want to submit the form?");
    
    // If the user clicks OK, submit the form
    if (result) {
        document.getElementById("myForm").submit();
    }
    }
    
    </script>
    <script>
      document.addEventListener("DOMContentLoaded", function(event) { 
          var scrollpos = localStorage.getItem('scrollpos');
          if (scrollpos) window.scrollTo(0, scrollpos);
      });

      window.onbeforeunload = function(e) {
          localStorage.setItem('scrollpos', window.scrollY);
      };
    </script>
  </head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

<nav class="navbar navbar-expand-lg navbar-light bg-light mb-4">
  <div class="container-fluid">
      <a class="navbar-brand" href="/"><img src="{{asset('img\logoCobit.png')}}" alt="" width="100" height="24"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link <?php if($head != 'Home'){echo "active";}else{echo "disabled";} ?>" aria-current="page" href="/">Home</a>
        <a class="nav-link <?php if($head != 'Design Factor'){echo "active";}else{echo "disabled";} ?>" href="/DF">Design Factor X</a>
        <a class="nav-link <?php if($head != 'DFMap'){echo "active";}else{echo "disabled";} ?>" href="/DFMap">Design Factor Map X</a>
        <a class="nav-link <?php if($head != 'GMO'){echo "active";}else{echo "disabled";} ?>" href="/GMO">GMO</a>
        {{-- <a class="nav-link <?php if($head != 'Vote Now'){echo "active";}else{echo "disabled";} ?>" href="/Vote">Vote</a> --}}
      </div>
      {{-- ms-auto margin start jadi geser kekanan --}}
      @auth
        <div class="navbar-nav ms-auto me-3">
          <div class="dropdown">
            <button class="btn dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
              Hello {{auth()->user()->name}}
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
              <li><a class="dropdown-item" href="/profile">Profile</a></li>
              <li><hr class="dropdown-divider"></li>
              <li>
                <form action="/logout" method="post">
                  @csrf
                  <button type="submit" class="dropdown-item">Logout</a>
                </form>
              </li>
            </ul>
          </div>  
        </div>
      @else
        <div class="navbar-nav ms-auto me-3">
          <a href="/login" class="nav-link {{$head != 'login' ? 'active' : 'disabled'}}"><i class="bi bi-arrow-bar-right"></i>Login</a>
        </div>
      @endauth

    </div>
  </div>
</nav>
        @yield('result')
</body>
</html>