@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          
    
          <h1 class="m-0">Stocks +</h1>
          <br> 
          <a href="{{route('stocks.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add New Stock Item </a>
          <a href="{{route('stockReport.index')}}" class="btn btn-sm btn-warning"><i class="fa fa-history" aria-hidden="true"></i>Generate Report </a>
          
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Stocks List  </li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->
  <!-- Main content -->
  <div class="col-md-12">
    <!-- general form elements -->
    <div class="card card-primary">
      <div class="card-header">
        <h3 class="card-title"> Stocks List  </h3>
      </div>
      <br>
      <table  id="example1" class="table table-bordered datatable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>Date</th>
                <th>Category </th>
                <th>Subcategory</th>
                <th>Brand</th>
                <th>item</th>
                <th>type</th>
                <th>inclusion</th>
                <th>Exclusion</th>
                <th>Maintanance</th>
                <th>Store Balance</th>
                <th>Letter/Issue No</th>
                <th>Issued To</th>
                <th>Branch</th>
                <th>Remarks</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
            @if($stocks)
                @foreach ($stocks as $key=> $stock)
                    <tr>
                        <td>{{++$key}}</td>
                        <td>{{$stock->date ??''}}</td>
                        <td>{{$stock->category??''}}</td>
                        <td>{{$stock->subcategory??''}}</td>
                        <td>{{$stock->brand??''}}</td>
                        <td>{{$stock->item??''}}</td>
                        <td>{{$stock->type??''}}</td>
                        <td>{{$stock->inclusion ?? ''}}</td>
                        <td>{{$stock->exclusion ?? ''}}</td>
                        <td>{{$stock->maintanance ?? ''}}</td>
                        <td>{{$stock->stockBalance ?? ''}}</td>
                        <td>{{$stock->issueNo ?? ''}}</td>
                        <td>{{$stock->issuedTo ?? ''}}</td>
                        <td>{{$stock->branch ?? ''}}</td>
                        <td>{{$stock->remarks ?? ''}}</td>
                        
                        <td>
                            <a  href="{{route('stocks.edit',$stock->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="stock-delete-{{$stock->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>
                            <form id="stock-delete-{{$stock->id}}" action="{{route('stocks.destroy',$stock->id)}}" method="post">
                                @csrf 
                                @method('DELETE')
                            </form>
                        </td>
                    </tr>
                @endforeach
            @endif
        </tbody>
      </table>
    </div>
    <!-- /.card -->
  </div>
  <!-- /.content -->
@endsection
