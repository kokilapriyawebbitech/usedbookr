<?php

namespace App\Http\Controllers\Book;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Books;
use Auth;
use Illuminate\Support\Carbon;
use App\Models\Author;
use App\Models\Category;
use App\Models\Binding;
use App\Models\BookCondition;
use App\Models\Book;




class BookController extends Controller
{
    public function All(){
        $books = Books::latest()->get();
        return view('backend.books.all',compact('books'));
    } // End Method 

    public function Add(){
        $authors = Author::where('status',1)->get();
        $categories = Category::where('status',1)->get();
        $bindings =Binding::where('status',1)->get();
        $condition_types = BookCondition::where('status',1)->get();
        return view('backend.books.add',compact('bindings','categories','condition_types'));
       } // End Method 

       

           public function AjaxCrop(Request $request){
            if(isset($request->image))
            {
                $data = $request->image;
                $image_array_1 = explode(";", $data);
                
                $image_array_2 = explode(",", $image_array_1[1]);
                $image_data = base64_decode($image_array_2[1]);
            
                $imageName = time() . '.jpg';
            
                $image_path = public_path('upload/admin_images/books') . '/' . $imageName;
            
                file_put_contents($image_path, $image_data);
            
                return response()->json(['image_url' =>  asset('upload/admin_images/books/'.$imageName),'image_name'=>$imageName]);
            }
    }


    public function ApiBooksAll(){


        try{
             

            $url = "https://api.premium.isbndb.com/books/isbn";  
            $restKey = env('REST_KEY');  
            
            $headers = array(  
              "Content-Type: application/json",  
              "Authorization: " . $restKey  
            );  
            $rest = curl_init();  
            curl_setopt($rest,CURLOPT_URL,$url);  
            curl_setopt($rest,CURLOPT_HTTPHEADER,$headers);  
            curl_setopt($rest,CURLOPT_RETURNTRANSFER, true);  
            
            $response = curl_exec($rest);
            $jsonResponse = json_decode($response, true);
           $books = $jsonResponse['books'];
          
           
            // return response([
            //     'success' => true,
            //     'response' => $jsonResponse
            // ]);
           
             return view('backend.api_books.all',compact('books'));
        }catch (Exception $exception) {
            return response([
                'success' => false,
                'generalerror' => true,
                'message' => $exception->getMessage()
            ]);
        }
    }


    public function ApiEdit($id){


        try{
            $url = 'https://api.premium.isbndb.com/book/'.$id;  
            $restKey = '50363_9a77755a173b1d79066197d0ce1bf427';  
            
            $headers = array(  
              "Content-Type: application/json",  
              "Authorization: " . $restKey  
            ); 
            
           
            
            $headers = array(  
              "Content-Type: application/json",  
              "Authorization: " . $restKey  
            );  
            
          
            
            $rest = curl_init();  
            curl_setopt($rest,CURLOPT_URL,$url);  
            curl_setopt($rest,CURLOPT_HTTPHEADER,$headers);  
            curl_setopt($rest,CURLOPT_RETURNTRANSFER, true);  
            
            $response = curl_exec($rest);
            $jsonResponse = json_decode($response, true);
            $authors = Author::where('status',1)->get();
            $categories = Category::where('status',1)->get();
            $bindings =Binding::where('status',1)->get();
            $condition_types = BookCondition::where('status',1)->get();
           
            return view('backend.api_books.add',compact('jsonResponse','authors','categories','bindings','condition_types'));
        }catch (Exception $exception) {
            return response([
                'success' => false,
                'generalerror' => true,
                'message' => $exception->getMessage()
            ]);
        }
       
        // $response;  
        //print_r($response);  
        //curl_close($rest);
    }


    public function APIBooksStore(Request $request){


        $book = new Book();
        $book->category_id = $request->input('category');
        $book->binding_type_id = $request->input('binding_type');
        $book->condition_id = $request->input('condition');
        $book->binding = $request->input('binding');
        $book->name = $request->input('name');
        $book->title_long = $request->input('title_long');
        $book->isbn = $request->input('isbn');
        $book->isbn13 = $request->input('isbn13');
        $book->publisher = $request->input('publisher');
        $book->language = $request->input('language');
        $book->edition = $request->input('edition');
        $book->pages = $request->input('pages');
        $book->dimensions = $request->input('dimensions');
        $book->image = $request->input('image');
        $book->synopsis = $request->input('synopsis');
        $book->price = $request->input('price');
        $book->original_price = $request->input('original_price');
        $book->offer = $request->input('offer');
        $book->status = $request->input('status');
        $book->save();

        $notification = array(
            'message' => 'Book Added Successfully', 
            'alert-type' => 'success'
        );
        return redirect()->route('api.books.all')->with($notification);

    }
       
    }



