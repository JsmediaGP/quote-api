<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\quoteResource;
use App\Models\category;
use App\Models\quote;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests\QuoteRequest;

class QuoteController extends Controller
{
    function show(){
        $quotes = quote::all();

        if($quotes){
            return  new quoteResource($quotes);
        }
        else{
            return response()->json([

                'status'=>"Error",
                'message'=> "No Quote found"

            ]);
        }
        
    }
    
    function newQuote(quoteRequest $request){
         //picking validation from my quoteRequest
         $newquote = quote::create([
            'content'=> $request->input('content'),
            'Author'=> $request->input('Author'),
            'category_id'=> $request->input('category_id'),
        ]);

        return response()->json([
            'status'=>"Success",
            'message'=> "New Quote added successfully"
        ]);

    }

    function Quotes($category){
        //this is searching quote based on the category supplied  by the user of the api
        //wherehas is a method to filter quotes that have a related category with the specified name
        $quotes = quote::select('id','content', 'Author')->whereHas('category', function ($query) use ($category) {
            $query->where('category', $category);
        })->get();

        // $quotes = quote::where('category', $category)->get();
        if($quotes->count()>0){

            //return new quoteResource($quotes);
           return response()->json([
                'status'=> "Success",
                'data'=> $quotes
            ]);

        }
        else{
            return response()->json([
                'status'=>"Failed",
                'message'=> "No quote found under ".$category. " category"
            ]);
        }
    }
}
