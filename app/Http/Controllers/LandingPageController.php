<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
class LandingPageController extends Controller
{
    public function redirectUser(){
        $role = auth()->user()->role;
        
        if($role === "admin"){
            return redirect('admin/dashboard');
        }
        
        if($role  === "user"){
            return redirect('user/dashboard');
        }
        
        if($role  ===  "technician" ){
            return redirect('technician/dashboard');
        }
        if($role === "authorizer"){
            return redirect('authorizer/balanceDashboard/index');
        }
        

    }
}
