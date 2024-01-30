<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreUserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'name'=> 'required|max:255',
            'email'=> ['required','email','unique:users'],
            'jabatan'=>['required','min:3','max:255'],
            'fungsi_jabatan'=>['required','min:3','max:255'],
            'atasan'=>['required','min:3','max:255'],
            'password'=> 'required|min:5|max:255'
        ];
    }
}
