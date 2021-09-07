@extends('layouts.master')

@section('content')
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          
    
          <h1 class="m-0">Products</h1>
          <br>
          <a href="{{route('products.create')}}" class="btn btn-sm btn-primary"><i class="fa fa-plus"></i>Add New Product Item</a>
          
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="{{route('dashboard')}}">Home</a></li>
            <li class="breadcrumb-item active">Product List </li>
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
        <h3 class="card-title">Product  List  </h3>
       
      </div>
      <br>
      <div class="float-right">
        
        <a href="{{route('admin.product.excel')}}" class="btn btn-warning">Download as Excel File </a>
        <a href="{{route('admin.product.csv')}}" class="btn btn-primary">Download as CSV FIle  </a>
      </div>
      <br>
      <table  class="table table-bordered datatable table-sm" id="productTable">
        <thead>
            <tr>
                <th>#SL</th>
                <th>Image</th>
                <th>Dept</th>
                <th>Name</th>
                <th>Category</th>
                <th>Sub Category</th>
                <th>Brand  </th>
                <th>Type</th>
                <th>Item</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            @if($products)
                @foreach ($products as $key=> $product)
                    <tr>
                      {{-- {{asset('storage/product_images/'.$product->image)}} --}}
                        <td>{{++$key}}</td>
                        <td>
                          <img width="64px" src="{{url('storage/'.$product->image)}}"/>
                        </td>
                        <td>{{$product->department ?? ''}}
                        <td>{{$product->name ?? ''}}</td>
                        <td>{{$product->category ?? ''}}</td>
                        <td>{{$product->subcategory ?? ''}}</td>
                        <td>{{$product->brand ?? ''}}</td>
                        <td>{{$product->type ?? ''}}</td>
                        <td>{{$product->item ?? ''}}</td>
                       

                        <td>
                            <a  href="{{route('products.edit',$product->id)}}" class="btn btn-sm btn-info">
                                <i class="fa fa-edit"></i>  Edit 
                            </a>
                            <a href="{{route('products.show',$product->id)}}" class="btn btn-sm btn-success">
                              <i class="fa fa-info-circle"></i> Details
                            </a>
                            <a  href="javascript:;" class="btn btn-sm btn-danger sa-delete" data-form-id="product-delete-{{$product->id}}">
                              <i class="fa fa-trash"></i>  Delete
                            </a>
                            <form id="product-delete-{{$product->id}}" action="{{route('products.destroy',$product->id)}}" method="post">
                                @csrf 
                                @method('DELETE') 
                            </form>
                        </td>
                    </tr>
                @endforeach
            @endif
        </tbody>
      </table>
      <br>
     
    </div>
    <!-- /.card -->


  </div>
  <!-- /.content -->    
  
@endsection
