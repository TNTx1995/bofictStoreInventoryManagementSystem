@extends('layouts.master')
@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Report Generator </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}"> Home </a></li>
            <li class="breadcrumb-item active">Report Generator </li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <div class="content">
    <div class="row">
        <div class="card card-primary col-md-6">
          <div class="card-header">
            <h3 class="card-title"> Generate Report </h3>
          
          </div>
          <form method="post" action="{{route('report.generateAllStuff')}}">
            @csrf 
            <div class="card-body">
              <div class="form-group">
                <label class="form-control" for="category"> All ICT Accessories Quantity </label>
                <select  class="form-control"  name="AccessoriesQuantity">
                  <option></option>
                  <option>Accessories Quantity</option>
                </select>
              </div>
              <div class="form-group">
                <label class="form-control" for="category"> Department  </label>
                <select  class="form-control" id="userSelectDepartment" name="department">
                  <option></option>
                  @foreach($departmentList as $dList )
                    <option>{{$dList->name}}</option>
                  @endforeach
                </select>
              </div>
                <div class="form-group">
                  <label class="form-control" for="category"> Category  </label>
                  <select class="form-control" id="userSelectCategory" name="category">
                    <option></option>
                    @foreach($categoryList as $cList )
                      <option>{{$cList->name}}</option>
                    @endforeach
                  </select>
                </div>
                <div class="form-group">
                  <label class="form-control" for="category"> Sub category   </label>
                  <select class="form-control" id="userSelectSubCategory" name="subcategory">
                    <option></option>
                  @foreach($subcategoryList as $sList)
                    <option>{{$sList->name}}</option>
                  @endforeach
                  </select>
                </div>
                <div class="form-group">
                  <label class="form-control" for="category"> Brand  </label>
                  <select id="userSelectBrand" class="form-control" name="brand">
                    <option></option>
                    @foreach($brandList as $bList)
                    <option> {{$bList->name}} </option>
                    @endforeach
                  </select>
                </div>
                <div class="form-group">
                  <label class="form-control" for="category"> Item  </label>
                  <select id="userSelectItem" class="form-control" name="item">
                    <option></option>
                    @foreach($itemList as $iList)
                      <option>{{$iList->name}}</option>
                    @endforeach
                  </select>
                </div>
                <div class="form-group">
                  <label class="form-control" for="category"> Type </label>
                  <select id="userSelectType" class="form-control" name="type">
                    <option></option>
                    @foreach($typeList as $tList)
                      <option>{{$tList->name}}</option>
                    @endforeach
                  </select>
                </div>
            </div>
            <div class="card-footer">
              <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-save"></i>Submit</button>
            </div>
        </div>
      </form>
        {{-- another card --}}
        <div class="card card-primary col-md-4 ml-3 h-40">
          <div class="card-header">
            <h3 class="card-title"> Report By  Product ID / BOF User ID  </h3>
          </div>
          <br>
          <br>
          <form action="{{route('admin.report.specificProduct')}}"  method="POST"> 
            @csrf 
         <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Product Information </h3>
            </div>
              <div class="card-body">
                <div class="form-group">
                  <label class="form-control" for="productName"> Report By Product ID /  </label>
                   <select id="selectProductForProductReport"  class="form-control" name="productName">
                     <option></option>
                     @foreach ($productsList as $pList)
                       <option> {{$pList->name}} </option>
                     @endforeach
                   </select>
                   @if($errors->has('productName'))
                      <span class="text-danger">Please provide a Valid Product Name </span>
                   @endif
                   <div class="card-footer">
                    <button type="submit" class="btn btn-primary btn-sm"><i class="fas fa-search"></i> Search </button>
                  </div>
                </div>
         </div>
        </form>
         <div class="card card-primary">
          <div class="card-header">
          </div>
          <form action="{{route('admin.report.byBofID')}}" method="post">
            @csrf
            <div class="card-body">
              <div class="form-group">
                <label class="form-control" for="productName"> Report By BOF User ID /</label>
                 <select id="selectUserForUserReport"  class="form-control" name="BofUserID">
                   <option></option>
                   @foreach ($usersIdList as $bList)
                     <option>{{$bList}}</option>
                   @endforeach
                 </select>
                 @if($errors->has('BofUserID'))
                    <span class="text-danger">Please provide a Valid BOF  User ID  </span>
                 @endif
                 <div class="card-footer">
                  <button type="submit" class="btn btn-primary btn-sm"><i class="fas fa-search"></i> Search </button>
                 </div>
              </div>
          </form>
        </div>
        <div class="card card-primary">
          <form action="{{route('admin.report.camerainformation')}}" method="post">
            @csrf
          <div class="card-header">
            <h3 class="card-title">Camera Information</h3>
          </div>
          <div class="card-body">
            <label class="form-control"> Camera Parent Location </label>
            <select class="form-control" name="parentLocation" id="SelectCameraLocation">
              <option></option>
                @foreach ($cameraLocationList as  $clist)
                  <option>{{$clist->locationName}}</option>
                @endforeach
            </select>
            @if($errors->has('parentLocation'))
                <span class="text-danger"> Please Select a Location </span>
            @endif
          </div>
          <div class="card-footer">
            <button type="submit" class="btn btn-primary btn-sm"><i class="fas fa-search"></i> Search </button>
          </div>
        </div>
        </form>
          </div>
        </div>
    </div>
</div>
  <div class="row">
    <div class="col-6">
      <form action="{{route('admin.report.erpmodification')}}" method="post">
        @csrf
        <div class="card card-primary">
          <div class="card-header"><h3 class="card-title">ERP Solution's Error Report </h3></div>
          <div class="card-body">
              <div class="form-group">
                <label class="form-control">Select Module</label>
                <select class="form-control" name="module">
                  <option>ICT</option>
                  <option>Administration</option>
                  <option>Security</option>
                  <option>Common Dashboard</option>
                </select>
              </div>
              <div class="card-footer">
                <button type="submit" class="btn btn-primary">Search</button>
              </div>
          </div>
       </form>
    </div>
    <div class="col-6">
    </div>
  </div>
</div>
@endsection