<?php

namespace App\Http\Resources;

use App\Models\category;
use Illuminate\Http\Request;
use App\Http\Resources\categoryResource;
use App\Models\quote;
use Illuminate\Http\Resources\Json\JsonResource;

class quoteResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request)//: array
    {
        return [
            'content'=>$this->content,
            'Author'=>$this->Author,
            'category_id'=>new categoryResource($this->category),
        ];
    }
}
