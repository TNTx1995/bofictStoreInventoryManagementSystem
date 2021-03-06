@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Camera Information </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item"><a href="{{route('brands.index')}}"> Camera Information List    </a></li>
            <li class="breadcrumb-item active">Create New Camera</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->
  <div class="card card-primary m-3">
    <div class="card-header">
        <h3 class="card-title">Upload Data Via Excel</h3>
    </div>
    <div class="card-body">
        <form method="post" action="{{route('admin.cameraDetailsInfoImport')}}" enctype="multipart/form-data">
            @csrf 
            <div class="form-group">
                <label>Choose Excel / CSV File</label>
                <input type="file" name="cameraDetailsFile" class="form-control">
                @if($errors->has('cameraDetailsFile'))
                    <span class="text-danger"> {{$errors->first('cameraDetailsFile')}}</span>
                @endif
                <span class="text-danger">**Excel File Column Must Be ictNo , cameraParentLoccation , specificLocationOfCamera ,  cameraType , defaultIpAddress , usedIpAddress , remarks </span>
            </div>
            <button class="btn btn-sm btn-primary">Submit</button>
        </form>
    </div>
  </div>
  <!-- Main content -->
  <div class="col-md-12">
    <!-- general form elements -->
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title">Create a New Camera  </h3>
      </div>
      <!-- /.card-header -->
      <!-- form start -->
      <form role="form" action="{{route('cameradetails.store')}}" method="post">
        @csrf 
        <div class="card-body">
          <div class="form-group">
            <label for="exampleInputEmail1"> Camera ICT NO <span class="text-danger">*</span>  </label>
            <input type="text" class="form-control" id="" name="ictNo" placeholder="Camera ICT No ">
            @if($errors->has('ictNo'))
                <span class="text-danger"> {{$errors->first('ictNo')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Parent Location <span class="text-danger">*</span>  </label>
            <select class="form-control" name="cameraParentLoccation">
                <option></option>
                @foreach ($cameraLocationsList as $cameraLocation )
                    <option> {{$cameraLocation->locationName}} </option>
                @endforeach
            </select>
            @if($errors->has('cameraParentLoccation'))
                <span class="text-danger">{{$errors->first('cameraParentLoccation')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Sub Location  <span class="text-danger">*</span> </label>
            <input type="text" class="form-control" id="" name="specificLocationOfCamera" placeholder="Sub Location ">
            @if($errors->has('specificLocationOfCamera'))
                <span class="text-danger">{{$errors->first('specificLocationOfCamera')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Camera Type <span class="text-danger">*</span> </label>
            <select  class="form-control" id="" name="cameraType">
                <option></option>
                <option>PTZ</option>
                <option>Bullet</option>
                <option>Hik Vision</option>
            </select>
            @if($errors->has('cameraType'))
                <span class="text-danger">{{$errors->first('cameraType')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Default IP Address <span class="text-danger">*</span>  </label>
            <input type="text" class="form-control" id="" name="defaultIpAddress" placeholder="Default IP Address  ">
            @if($errors->has('defaultIpAddress'))
                <span class="text-danger">{{$errors->first('defaultIpAddress')}}</span>
            @endif
          </div>

          <div class="form-group">
            <label for="exampleInputEmail1"> User IP Address <span class="text-danger">*</span>  </label>
            <input type="text" class="form-control" id="" name="usedIpAddress" placeholder="User IP Address">
            @if($errors->has('usedIpAddress'))
                <span class="text-danger">{{$errors->first('usedIpAddress')}}</span>
            @endif
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> NVR   </label>
            <input type="text" class="form-control" id="" name="nvr"  placeholder="nvr">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1"> Remarks  </label>
            <input type="text" class="form-control" id="" name="remarks" placeholder="Any Remarks ">
          </div>
        </div>
        <!-- /.card-body -->
        <div class="card-footer">
            <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i>Submit</button>
        </div>
      </form>
    </div>
    <!-- /.card -->
  </div>
  <!-- /.content -->
@endsection
