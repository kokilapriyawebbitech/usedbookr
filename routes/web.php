<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Demo\DemoController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Pos\SupplierController;
use App\Http\Controllers\Category\CategoryController;
use App\Http\Controllers\BookCondition\BookConditionController;
use App\Http\Controllers\Country\CountryController;
use App\Http\Controllers\State\StateController;
use App\Http\Controllers\City\CityController;
use App\Http\Controllers\Book\BookController;
use App\Http\Controllers\Author\AuthorController;
use App\Http\Controllers\Binding\BindingController;










Route::get('/admin', function () {
    return view('admin.index');
});
 

Route::controller(DemoController::class)->group(function () {
    Route::get('/about', 'Index')->name('about.page')->middleware('check');
    Route::get('/contact', 'ContactMethod')->name('cotact.page');
});


 // Admin All Route 
Route::controller(AdminController::class)->group(function () {
    Route::get('/admin/logout', 'destroy')->name('admin.logout');
    Route::get('/admin/profile', 'Profile')->name('admin.profile');
    Route::get('/edit/profile', 'EditProfile')->name('edit.profile');
    Route::post('/store/profile', 'StoreProfile')->name('store.profile');

    Route::get('/change/password', 'ChangePassword')->name('change.password');
    Route::post('/update/password', 'UpdatePassword')->name('update.password');
     
});


 // Admin All Route 
Route::controller(SupplierController::class)->group(function () {
    Route::get('/supplier/all', 'SupplierAll')->name('supplier.all'); 
    Route::get('/supplier/add', 'SupplierAdd')->name('supplier.add'); 
    Route::post('/supplier/store', 'SupplierStore')->name('supplier.store');
    Route::get('/supplier/edit/{id}', 'SupplierEdit')->name('supplier.edit'); 
    Route::post('/supplier/update', 'SupplierUpdate')->name('supplier.update');
    Route::get('/supplier/delete/{id}', 'SupplierDelete')->name('supplier.delete');
});



 // Category All Route 
 Route::controller(CategoryController::class)->group(function () {
    Route::get('/categories/all', 'All')->name('categories.all'); 
    Route::get('/categories/add', 'Add')->name('categories.add'); 
    Route::post('/categories/store', 'Store')->name('categories.store');
    Route::get('/categories/edit/{id}', 'Edit')->name('categories.edit'); 
    Route::post('/categories/update', 'Update')->name('categories.update');
    Route::get('/categories/delete/{id}', 'Delete')->name('categories.delete');
});



 // Binding All Route 
 Route::controller(BindingController::class)->group(function () {
    Route::get('/bindings/all', 'All')->name('bindings.all'); 
    Route::get('/bindings/add', 'Add')->name('bindings.add'); 
    Route::post('/bindings/store', 'Store')->name('bindings.store');
    Route::get('/bindings/edit/{id}', 'Edit')->name('bindings.edit'); 
    Route::post('/bindings/update', 'Update')->name('bindings.update');
    Route::get('/bindings/delete/{id}', 'Delete')->name('bindings.delete');
});



 //Book Conditions All Route 
 Route::controller(BookConditionController::class)->group(function () {
    Route::get('/book_conditions/all', 'All')->name('book_conditions.all'); 
    Route::get('/book_conditions/add', 'Add')->name('book_conditions.add'); 
    Route::post('/book_conditions/store', 'Store')->name('book_conditions.store');
    Route::get('/book_conditions/edit/{id}', 'Edit')->name('book_conditions.edit'); 
    Route::post('/book_conditions/update', 'Update')->name('book_conditions.update');
    Route::get('/book_conditions/delete/{id}', 'Delete')->name('book_conditions.delete');
});



 //Country Add All Route 
 Route::controller(CountryController::class)->group(function () {
    Route::get('/countries/all', 'All')->name('countries.all'); 
    Route::get('/countries/add', 'Add')->name('countries.add'); 
    Route::post('/countries/store', 'Store')->name('countries.store');
    Route::get('/countries/edit/{id}', 'Edit')->name('countries.edit'); 
    Route::post('/countries/update', 'Update')->name('countries.update');
    Route::get('/countries/delete/{id}', 'Delete')->name('countries.delete');
});



 //State Add All Route 
 Route::controller(StateController::class)->group(function () {
    Route::get('/states/all', 'All')->name('states.all'); 
    Route::get('/states/add', 'Add')->name('states.add'); 
    Route::post('/states/store', 'Store')->name('states.store');
    Route::get('/states/edit/{id}', 'Edit')->name('states.edit'); 
    Route::post('/states/update', 'Update')->name('states.update');
    Route::get('/states/delete/{id}', 'Delete')->name('states.delete');
});



 //City Add All Route 
 Route::controller(CityController::class)->group(function () {
    Route::get('/cities/all', 'All')->name('cities.all'); 
    Route::get('/cities/add', 'Add')->name('cities.add'); 
    Route::post('/cities/store', 'Store')->name('cities.store');
    Route::get('/cities/edit/{id}', 'Edit')->name('cities.edit'); 
    Route::post('/cities/update', 'Update')->name('cities.update');
    Route::get('/cities/delete/{id}', 'Delete')->name('cities.delete');
    Route::post('/fetch/states', 'FetchStates')->name('fetch-states');

    
});



 //Book All Route 
 Route::controller(BookController::class)->group(function () {
    Route::get('/books/all', 'All')->name('books.all'); 
    Route::get('/books/add', 'Add')->name('books.add'); 
    Route::post('/books/store', 'Store')->name('books.store');
    Route::get('/books/edit/{id}', 'Edit')->name('books.edit'); 
    Route::post('/books/update', 'Update')->name('books.update');
    Route::get('/books/delete/{id}', 'Delete')->name('books.delete');
    Route::post('crop-image-upload-ajax_gallery', 'AjaxCrop')->name('crop-image-upload-ajax_gallery');
    Route::post('/books_api/store', 'APIBooksStore')->name('api_books.store');

});







 //Author All Route 
 Route::controller(AuthorController::class)->group(function () {
    Route::get('/authors/all', 'All')->name('authors.all'); 
    Route::get('/authors/add', 'Add')->name('authors.add'); 
    Route::post('/authors/store', 'Store')->name('authors.store');
    Route::get('/authors/edit/{id}', 'Edit')->name('authors.edit'); 
    Route::post('/authors/update', 'Update')->name('authors.update');
    Route::get('/authors/delete/{id}', 'Delete')->name('authors.delete');

    
});


 //Author All Route 
 Route::controller(BookController::class)->group(function () {
    Route::get('/books/api/all', 'ApiBooksAll')->name('api.books.all'); 
    Route::get('/book/api/edit/{id}', 'ApiEdit')->name('book_api.edit'); 
    
});







 





Route::get('/dashboard', function () {
    return view('admin.index');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';


// Route::get('/contact', function () {
//     return view('contact');
// });
