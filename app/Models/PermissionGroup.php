<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\SoftDeletes;

class PermissionGroup extends Model
{
    use HasFactory, SoftDeletes;

    protected $fillable = [
        'name'
    ];

    /**
     * @return HasMany
     */
    public function permissions(): HasMany
    {
        return $this
            ->hasMany(
                Permission::class,
//                'permission_group_id',
//                'id'
            );
    }
}
