<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class SecondBids extends Model
{
    use SoftDeletes;

    protected $table='posts';

    protected $fields= [
        'id',
        'name',
        'surname',
        'email',
        'phone',
        'education_level',
        'utm',
        'deleted_at',
        'created_at',
        'updated_at',
    ];
}
