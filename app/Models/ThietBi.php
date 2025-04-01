<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ThietBi extends Model
{
    protected $table = 'thietbi';
    protected $primaryKey = 'id_tb';
    public $timestamps = false;
    protected $fillable = [
        'ten_tb',
        'id_ltb',
        'trichxuat',
        'giatb'
    ];
    public function loaithietbi()
    {
        return $this->belongsTo(LoaiThietBi::class, 'id_ltb', 'id_ltb');
    }
    public function donvitinh()
    {
        return $this->belongsTo(DonViTinh::class, 'id_dvt', 'id_dvt');

    }
}