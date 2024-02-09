<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;

    public function categories()
    {
        return $this->hasOne(Category::class,'id','category_id');
    }

    public function binding_type()
    {
        return $this->hasOne(Binding::class,'id','binding_type_id');
    }

    public function book_condition()
    {
        return $this->hasOne(BookCondition::class,'id','condition_id');
    }

    
}
