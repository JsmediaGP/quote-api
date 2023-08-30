<?php

namespace App\Http\Controllers;

use App\Http\Requests\CategoryRequest;
use App\Models\category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    function index(){

    }
    function store(CategoryRequest $request){
        $newcategory = category::create([
            'category'=> $request->input('category'),
        ]);

        return response()->json([
            'status'=>"Success",
            'message'=> "New category added successfully"
        ]);

    }
}
