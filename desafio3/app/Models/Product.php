<?php

namespace App\Models;

use Illuminate\Database\Eloquent\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Category;

class Product extends Model
{
    protected $fillable = [
        'name',
        'slug',
        'description',
        'price',
        'category_id',
    ];
    protected $table = 'products';

    public function categories()
    {
        return $this->hasOne(Category::class, 'category_id', 'id');
    }

    public function category(){
        return $this->belongsTo(Category::class,
            'category_id',
            'id',
            'id');
    }


}
