<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Author;
use App\Models\Book;
use App\Models\Binding;
use App\Models\BookCondition;


class HomeController extends Controller
{
    public function FetchAuthor(){
        $authors=Author::where('status',1)->limit(10)->get();
        return response()->json(['authors'=>$authors,'success'=>true]); 
    }

    public function Books(){
        $book_conditions = BookCondition::where('status',1)->get();
        $books = Book::where('status',1)->with('categories:id,name','binding_type:id,name','book_condition:id,name')->limit(10)->get();
        return response()->json(['book_conditions'=>$book_conditions,'books'=>$books,'success'=>true]); 
    }
}
