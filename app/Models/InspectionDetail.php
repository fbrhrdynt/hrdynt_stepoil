<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InspectionDetail extends Model
{
    use HasFactory;

    protected $table = 'inspection_detail';

    protected $fillable = [
        'id_inspection',
        'id_asset_list',
        'inspection_date',
        'inspection_exp',
        'cert',
        'notes'
    ];

    public function inspectionCategory()
    {
        return $this->belongsTo(InspectionCategory::class, 'id_inspection');
    }

    public function asset()
    {
        return $this->belongsTo(AssetList::class, 'id_asset_list');
    }

    protected static function boot()
    {
        parent::boot();
    
        static::deleting(function ($inspection) {
            if ($inspection->cert && Storage::disk('public')->exists($inspection->cert)) {
                Storage::disk('public')->delete($inspection->cert);
            }
        });
    }
    
}
