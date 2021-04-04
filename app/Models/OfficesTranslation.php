<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
* Class ServicesTranslation
*/
class OfficesTranslation extends Model
{
  protected $table = 'offices_translations';

  protected $primaryKey = 'offices_translations_id';

  public $timestamps = true;

  protected $fillable = [
    'offices_id',
    'title',
    'address',
  ];

  protected $guarded = [];
  public function mainTb()
  {
    return $this->belongsTo('App\Models\Offices','offices_id','offices_id');
  }
}
