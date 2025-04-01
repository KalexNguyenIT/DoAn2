<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KhuVuc extends Model
{
    use HasFactory;

    protected $table = 'khuvuc';
    protected $primaryKey = 'id_kv';

    protected $fillable = [
        'ten_kv',
        'mota'
    ];

    // Tắt timestamps vì bảng không có created_at và updated_at
    public $timestamps = false;

    // Quan hệ với Phòng
    public function phong()
    {
        return $this->hasMany(Phong::class, 'id_kv');
    }
}
