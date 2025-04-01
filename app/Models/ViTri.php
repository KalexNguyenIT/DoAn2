<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ViTri extends Model
{
    use HasFactory;

    protected $table = 'vitri';
    protected $primaryKey = 'id_vt';
    public $timestamps = false;

    protected $fillable = [
        'ten_vt',
        'mota'
    ];

    // Quan hệ với Phòng
    public function phong()
    {
        return $this->hasMany(Phong::class, 'id_vt');
    }
}
