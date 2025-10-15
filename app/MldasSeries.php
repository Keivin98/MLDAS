<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MldasSeries extends Model
{
    protected $fillable = [
        'year',
        'title',
        'url',
        'is_active',
        'sort_order'
    ];

    protected $casts = [
        'is_active' => 'boolean',
    ];

    public function scopeActive($query)
    {
        return $query->where('is_active', true);
    }

    public function scopeOrdered($query)
    {
        return $query->orderBy('sort_order', 'desc')->orderBy('year', 'desc');
    }
}
