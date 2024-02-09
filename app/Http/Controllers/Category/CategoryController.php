<?php

namespace App\Http\Controllers\Category;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use Auth;
use Illuminate\Support\Carbon;


class CategoryController extends Controller
{
    public function All(){
        $categories = Category::latest()->get();
        return view('backend.category.all',compact('categories'));
    } // End Method 


    
    Public function ApiAll(){
        $categories = Category::where('status',1)->get();
        return response([
            'success' => true,
            'categories' => $categories
        ]);
        //return view('backend.category.all',compact('categories'));
    }


    public function Add(){
     return view('backend.category.add');
    } // End Method 


    public function Store(Request $request){

        Category::insert([
            'name' => $request->name,
           'status' =>$request->status,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(), 

        ]);

         $notification = array(
            'message' => 'Category Inserted Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->route('categories.all')->with($notification);

    } // End Method 


    public function Edit($id){

        $edit = Category::findOrFail($id);
        return view('backend.category.edit',compact('edit'));

    } // End Method 

    public function Update(Request $request){

        $id = $request->id;

        Category::findOrFail($id)->update([
            'name' => $request->name,
            'status' => $request->status,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(), 

        ]);

         $notification = array(
            'message' => ' Updated Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->route('categories.all')->with($notification);

    } // End Method 


    public function Delete($id){

        Category::findOrFail($id)->delete();
      
       $notification = array(
            'message' => 'Deleted Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method
    

    public function FetchBook(){
        try{
            // $url = 'https://api2.isbndb.com/book/935010587X';  
            // $restKey = '50363_9a77755a173b1d79066197d0ce1bf427';  
            
            // $headers = array(  
            //   "Content-Type: application/json",  
            //   "Authorization: " . $restKey  
            // ); 
            
            // $author = rawurlencode('Disha Experts');
            // $url = "https://api2.isbndb.com/author/{$author}";  
            // $restKey = '50363_9a77755a173b1d79066197d0ce1bf427';  

            $url = "https://api2.isbndb.com/books/isbn";  
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
            //dd($jsonResponse);
            
            return response([
                'success' => true,
                'response' => $jsonResponse
            ]);
            
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



    public function FetchAuthors(){
        try{
            // $url = 'https://api2.isbndb.com/book/935010587X';  
            // $restKey = '50363_9a77755a173b1d79066197d0ce1bf427';  
            
            // $headers = array(  
            //   "Content-Type: application/json",  
            //   "Authorization: " . $restKey  
            // ); 
            
            $author = rawurlencode('Disha Experts');
            $url = "https://api2.isbndb.com/author/{$author}";  
            $restKey = env('REST_KEY');  

            // $url = "https://api2.isbndb.com/books/isbn";  
            // $restKey = '50363_9a77755a173b1d79066197d0ce1bf427';  
            
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
            
            return response([
                'success' => true,
                'response' => $jsonResponse
            ]);
            
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


    
}
