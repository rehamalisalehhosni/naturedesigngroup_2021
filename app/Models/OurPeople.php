<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\ServicesTranslation;

/**
* Class Services
*/
class OurPeople extends Model
{
    protected $table = 'our_people';

    protected $primaryKey = 'our_people_id';

    public $timestamps = true;

    protected $fillable = [
        'image',
        'sort',
        'active'
    ];

    public function translations($lang,$id)
    {
        return OurPeopleTranslation::where(['locale'=>$lang,'our_people_id'=>$id])->first();
    }

    protected $guarded = [];

}
