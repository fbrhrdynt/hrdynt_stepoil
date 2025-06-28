<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InspectionCategory extends Model
{
    use HasFactory;

    protected $table = 'inspection_category';
    protected $primaryKey = 'id_inspection';

    protected $fillable = [
        'name_inspection',
        'notes',
    ];

    // Relasi: Satu kategori memiliki banyak detail
    public function details()
    {
        return $this->hasMany(InspectionDetail::class, 'id_inspection');
    }

    // Hapus otomatis semua detail saat kategori dihapus
    protected static function boot()
    {
        parent::boot();

        static::deleting(function ($category) {
            $category->details()->delete();
        });
    }
}
