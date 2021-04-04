<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
* Class ServicesTranslation
*/
class OurPeopleTranslation extends Model
{
  protected $table = 'our_people_translations';

  protected $primaryKey = 'our_people_translations_id';

  public $timestamps = true;

  protected $fillable = [
    'our_people_id',
    'name',
    'title',
  ];

  protected $guarded = [];
  public function mainTb()
  {
    return $this->belongsTo('App\Models\OurPeople','our_people_id','our_people_id');
  }
}
