<?php

//for admin
use App\Http\Controllers\Admin\CategoriesController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\UsersController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\BrandsController;
use App\Http\Controllers\Admin\TypeController;
use App\Http\Controllers\Admin\SubcategoryController;
use App\Http\Controllers\Admin\ProductController;
use App\Http\Controllers\Admin\ItemController;
use App\Http\Controllers\Admin\DepartmentController;
use App\Http\Controllers\LandingPageController;
use App\Http\Controllers\Admin\AdminComplaintsController;
use App\Http\Controllers\Admin\ProductissuedController;
use App\Http\Controllers\Admin\AssignProductToUser;
use App\Http\Controllers\Admin\StockController;
use App\Http\Controllers\Admin\AccessoryController;
use App\Http\Controllers\Admin\ReportGeneratorController;
// for user 
use App\Http\Controllers\User\ViewerController; 

// for technicians
use App\Http\Controllers\Technician\TechDashboardController;
use App\Http\Controllers\Technician\ComplaintsController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
//     return view('dashboard');
// })->name('dashboard');

//test
Route::get('/user/logout',[UsersController::class,'logout'])->name('users.logout');

// Dashboard redirect after checking who is user or admin 
Route::get('/redirects',[LandingPageController::class,'redirectUser']);


Route::middleware(['auth:sanctum','VerifyAdmin'])->group(function(){
   // admin prefix
      Route::prefix('admin')->group(function(){
       // Dashboard 
      Route::get('/dashboard',[DashboardController::class,'index'])->name('dashboard');
         // User Insertion 
      Route::resource('users', UsersController::class);
      Route::get('/users/{id}/to-technician/',[UsersController::class,'toTechnician'])->name('users.toTechnician');
      Route::get('/users/{id}/to-user/',[UsersController::class,'toUser'])->name('users.toUser');
      Route::get('/users/{id}/to-admin/',[UsersController::class,'toAdmin'])->name('users.toAdmin');
      Route::get('/users/{id}/details',[UsersController::class,'detailsOfUser'])->name('users.details');
       //Category
      Route::resource('categories', CategoriesController::class);
       //Brand
      Route::resource('brands', BrandsController::class);
     //Sub category 
      Route::resource('subcategories',SubcategoryController::class);
     // Type 
      Route::resource('types',TypeController::class);
     //Product
      Route::resource('products',ProductController::class);
     //Item
      Route::resource('items',ItemController::class);
     //complaints 
      Route::resource('admin_complaints',AdminComplaintsController::class);
      Route::post('/complaints/complaints-list-byDate',[AdminComplaintsController::class,'listByDate'])->name('admin_complaints.listByDate');

      Route::post('/complaints/listBy-year/',[AdminComplaintsController::class,'technicianSlnListByYear'])->name('admin_complaints.listByYear');
      Route::get('/complaints/listBy-year/get',[AdminComplaintsController::class,'technicianSlnListByYearGet'])->name('admin_complaints.listByYear.get');
  
     //admin_complaints.listByYearMonth
      Route::post('/complaints/listBy-year-month',[AdminComplaintsController::class , 'technicianSlnListByYearMonth'])->name('admin_complaints.listByYearMonth');
      Route::get('/complaints/listBy-year-month/get',[AdminComplaintsController::class , 'technicianSlnListByYearMonthGet'])->name('admin_complaints.listByYearMonth.get');
     //Department 
      Route::resource('departments',DepartmentController::class);
      // Export data table to excel  && csv file of Product 
      Route::get('/export-excel/excel',[ProductController::class,'exportIntoExcel'])->name('admin.product.excel');
      Route::get('/export-excel/csv',[ProductController::class,'exportIntoCSV'])->name('admin.product.csv');
      
       // Import data from excel file 
       Route::post('/import-excel-file/products',[ProductController::class,'importCvsFileToDatabase'])->name('admin.product.import');

       // product issue users 
       Route::resource('productIssuesUsers',ProductissuedController::class);
       Route::post('/import-excel-file/productUsers',[ProductissuedController::class,'importProductUsers'])->name('admin.productUsersInfo.import');
      
       // assigning product with user 
       Route::resource('assignProductWithUsers',AssignProductToUser::class); 
       Route::get('/assignProductWithUsers/{id}/details-of-product-repairment-history',[AssignProductToUser::class,'productRepairementHistory'])->name('assignProductWithUsers.repairmentHistoryProduct');

       //Product Stock 
       Route::resource('stocks',StockController::class);

       //Accessories Stock 
       Route::resource('accessories', AccessoryController::class);
       

       //Report Generator 
       Route::get('/reports',[ReportGeneratorController::class,'index'])->name('report.index');
       Route::post('/reports/bycategory',[ReportGeneratorController::class,'exportReportByCategory'])->name('report.GenerateByCategory');
       Route::post('/reports/bycategory&SubCategory',[ReportGeneratorController::class,'exportReportByCategorySubCategory'])->name('report.GenerateByCategorySubcategory');
    });
});

// Routes for users 

Route::middleware(['auth:sanctum','VerifyUser'])->group(function(){
  // user prefix
   Route::prefix('user')->group(function(){
      
    // user dashboard
    Route::get('/dashboard',[ViewerController::class,'dashboard'])->name('user.dashboard');
    // Product Index 
      Route::get('/products',[ViewerController::class,'index'])->name('product.index');
      // show product details 
      Route::get('/product/details/{id}',[ViewerController::class,'details'])->name('product.show');
      // Export data table to excel  && csv file of Product 
      Route::get('/export-excel/excel',[ProductController::class,'exportIntoExcel'])->name('user.product.excel');
      Route::get('/export-excel/csv',[ProductController::class,'exportIntoCSV'])->name('user.product.csv');
      Route::post('/product/search',[ViewerController::class,'searchProduct'])->name('user.search.products');
      Route::post('/product/search/name',[ViewerController::class,'searchProductName'])->name('user.search.specificProduct');
      
      
    });
});

//  Routes for technicians 

Route::middleware(['auth:sanctum','VerifyTechnician'])->group(function(){
  // user prefix
   Route::prefix('technician')->group(function(){
      
    // user dashboard
    Route::get('/dashboard',[TechDashboardController::class,'dashboard'])->name('technician.dashboard');
    // Complaint 
     Route::resource('technician_complaints',ComplaintsController::class);
     Route::post('/complaints/complaints-list-byDate',[ComplaintsController::class,'listByDate'])->name('technician_complaints.listByDate');     
    });
});