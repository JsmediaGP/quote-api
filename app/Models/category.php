<?php

namespace App\Models;

use App\Models\quote;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class category extends Model
{
    protected $table = 'category';
    protected $fillable = [
        'category'
    ];
    use HasFactory;

    public function quotes()
    {
        return $this->hasMany(quote::class, 'category_id');
    }

}
