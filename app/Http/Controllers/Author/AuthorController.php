<?php

namespace App\Http\Controllers\Author;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Author;
use Auth;
use Illuminate\Support\Carbon;

class AuthorController extends Controller
{
    public function All(){
        $authors = Author::latest()->get();
        return view('backend.authors.all',compact('authors'));
    } // End Method 


    public function Add(){
        return view('backend.authors.add');
       } // End Method 


       public function Store(Request $request){

        Author::insert([
            'author' => $request->name,
           'status' =>$request->status,
            'created_by' => Auth::user()->id,
            'created_at' => Carbon::now(), 

        ]);

         $notification = array(
            'message' => 'Author Inserted Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->route('authors.all')->with($notification);

    } // End Method 



    public function Edit($id){

        $edit = Author::findOrFail($id);
        return view('backend.authors.edit',compact('edit'));

    } // End Method 



    public function Update(Request $request){

        $id = $request->id;

        Author::findOrFail($id)->update([
            'author' => $request->name,
            'status' => $request->status,
            'updated_by' => Auth::user()->id,
            'updated_at' => Carbon::now(), 

        ]);

         $notification = array(
            'message' => ' Updated Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->route('authors.all')->with($notification);

    } // End Method 



    public function Delete($id){

        Author::findOrFail($id)->delete();
      
       $notification = array(
            'message' => 'Deleted Successfully', 
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);

    } // End Method 





}
