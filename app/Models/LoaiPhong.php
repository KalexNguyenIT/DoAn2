<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class LoaiPhong extends Model
{
    use HasFactory;

    protected $table = 'loaiphong';
    protected $primaryKey = 'id_lp';
    public $timestamps = false;

    protected $fillable = [
        'ten_lp',
        'mota'
    ];

    // Quan hệ với Phòng
    public function phong()
    {
        return $this->hasMany(Phong::class, 'id_lp');
    }
}
