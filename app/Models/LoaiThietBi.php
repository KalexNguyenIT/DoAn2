<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class LoaiThietBi extends Model
{
    protected $table = 'loaithietbi';
    protected $primaryKey = 'id_ltb';
    public $timestamps = false;

    protected $fillable = [
        'ten_ltb',
        'mota'
    ];

    public function thietbi()
    {
        return $this->hasMany(ThietBi::class, 'id_ltb', 'id_ltb');
    }
}
