<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class DonViTinh extends Model
{
    protected $table = 'donvitinh';
    protected $primaryKey = 'id_dvt';
    public $timestamps = false;

    protected $fillable = [
        'ten_dvt',
        'mota'
    ];

    public function thietbi()
    {
        return $this->hasMany(ThietBi::class, 'id_dvt', 'id_dvt');
    }
}
