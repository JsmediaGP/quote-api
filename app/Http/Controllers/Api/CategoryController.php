<?php

namespace App\Http\Controllers\Api;

use App\Models\category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\CategoryRequest;

class CategoryController extends Controller
{
    function index(){
        $latest = category::select('id', 'category')->get();

        return response()->json([
            'status'=> "Success",
            'data'=> $latest
        ]);

    }
    function categoryStore(categoryRequest $request){


        //picking validation from my CategoryRequest
        $newcategory = category::create([
            'category'=> $request->input('category'),
        ]);

        return response()->json([
            'status'=>"Success",
            'message'=> $newcategory->category. " category added successfully"
        ]);

    }
}
