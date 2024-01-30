<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use App\Http\Requests\StoreUserRequest;

class RegistrationController extends Controller
{
    public function index(){
        return view('Page/Registration',["judul"=> "Registration ","head"=>"login"]);
    }
    public function store(StoreUserRequest $request){
        // dd($request->all());
        
        $user = new user;
        $user->name= $request->name;
        $user->email= $request->email;
        $user->jabatan= $request->jabatan;
        $user->fungsi_jabatan= $request->fungsi_jabatan;
        $user->atasan= $request->atasan;
        $user->password= $request->password;
        
        // add more fields (all fields that users table contains without id)
        $user->save();
        
        // $validated_data['password'] = bcrypt($validated_data['password']);
        // User::create($request->all());
        return redirect(route('login.index'))->with('Registered','Registered Succesfull');
    }
}
