<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Phong extends Model
{
    use HasFactory;

    protected $table = 'phong';
    protected $primaryKey = 'id_p';
    public $timestamps = false;

    protected $fillable = ['ten_p', 'succhua', 'id_lp', 'id_kv', 'id_vt', 'trichxuat'];

    // Quan hệ với Khu Vực
    public function khuVuc()
    {
        return $this->belongsTo(KhuVuc::class, 'id_kv');
    }

    // Quan hệ với Vị Trí
    public function viTri()
    {
        return $this->belongsTo(ViTri::class, 'id_vt');
    }

    // Quan hệ với Loại Phòng
    public function loaiPhong()
    {
        return $this->belongsTo(LoaiPhong::class, 'id_lp');
    }
}
