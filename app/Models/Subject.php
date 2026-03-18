<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{
    use HasFactory;
    protected $table = 'subjects';
    public $fillable=['name','code','major_id'];
    public function major_obj(){
        return $this->belongsTo(Majors::class,'major_id');
    }

    public function attributes(){
        return $this->hasMany(SubjectAttribute::class, 'subject_id', 'id');
    }

}
