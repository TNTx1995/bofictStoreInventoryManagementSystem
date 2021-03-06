<?php

namespace App\Imports;

use App\Models\Admin\Product;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
class ProductImport implements ToModel,WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    { // all the row heading must be small letters 
        return new Product([
            'name'=>$row['name'],
            'category'=>$row['category'],
            'subcategory'=>$row['subcategory'],
            'type'=>$row['type'],
            'item' =>$row['item'],
            'brand'=>$row['brand'],
            'description'=>$row['description'],
            'department'=>$row['department'],
        ]);
    }
}
