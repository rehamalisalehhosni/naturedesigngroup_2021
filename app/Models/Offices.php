<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\ServicesTranslation;

/**
* Class Services
*/
class Offices extends Model
{
    protected $table = 'offices';

    protected $primaryKey = 'offices_id';

    public $timestamps = true;

    protected $fillable = [
        // 'title',
        // 'address',
        'phone',
        'fax',
        'email',
        'lat',
        'lng',
        'sort',
        'active'
    ];

    public function translations($lang,$id)
    {
        return OfficesTranslation::where(['locale'=>$lang,'offices_id'=>$id])->first();
    }

    protected $guarded = [];

}
