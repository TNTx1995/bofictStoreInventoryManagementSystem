<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\Admin\Product;
use App\Models\Admin\Productissued;
use App\Models\Technician\Complaint;
use App\Models\Admin\ProductIssueToUserDetail;
use Illuminate\Http\Request;

class AssignProductToUser extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $productIssuers = Productissued::orderby('created_at','DESC')->get();
        $products = Product::orderby('created_at','DESC')->get();
        return view('admin.issues.assignProductwithUser',compact('productIssuers','products'));

    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    {
        
       // This is many to many relation for product with user

        $this->validate($request,[
            'BofUserId'=>'required',
            'ProductId'=>'required',
            'issueDate'=>'required'
       ]);
       
       $userInfo = Productissued::where(['bofid'=>$request->BofUserId])->first();
       $productInfo = Product::where(['name'=>$request->ProductId])->first();
       $userInfo->products()->attach($productInfo->id);
       // end 
       // details for using product and issue date and return date !
       // issueDate ,  returnDate ,  shortDescription , ProductId !
        $productIssueTo =  new  ProductIssueToUserDetail();
        $productIssueTo->BofUserId = $request->BofUserId;
        $productIssueTo->productId = $request->ProductId;
        $productIssueTo->issueDate = $request->issueDate;
        $productIssueTo->returnDate = $request->returnDate;
        $productIssueTo->shortDescription = $request->shortDescription;
        $productIssueTo->save();
        flash('User is Assigned with a Product  Successfully!')->success();
        return back();
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $productUserInfo = Productissued::where(['id'=>$id])->first();
        $productInfo = $productUserInfo->products;
        $totalProductUsed =  $productUserInfo->products->count(); 
        return view('admin.issues.detailsOfProductUser',compact('productUserInfo','productInfo','totalProductUsed'));
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
    public function productRepairementHistory($id){
       
        $complaintsOfProduct = Complaint::where('product_id',$id)->orderby('created_at','DESC')->get();
        $complaintsCount = Complaint::where('product_id',$id)->count();
        return view('admin.issues.repairementHistory',compact('complaintsOfProduct','complaintsCount'));
       
    }
}
