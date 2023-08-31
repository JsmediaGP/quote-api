<?php

namespace App\Models;

use App\Models\category;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class quote extends Model
{

    protected $table = 'quote';
    protected $fillable = [
         'content', 'Author', 'category_id'
    ];
    use HasFactory;

    public function category()
    {
        return $this->belongsTo(category::class, 'category_id');
    }

}




