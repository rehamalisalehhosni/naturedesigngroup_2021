<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\ProjectsTranslation;




class Projects extends Model
{
    protected $table = 'projects';

    protected $primaryKey = 'projects_id';

    public $timestamps = true;

    protected $fillable = [
        'title',
        'description',
        'main_image',
        'logo',
        'logo_title',
        'logo_subtitle',
        'year',
        'area',
        'build_up',
        'show_home',
        'publish',
        'gallary',
        'sort',
        'presentation',
        'video',
        'clients',
        'status',
        'location',
        'projects_category_id',
    ];

    protected $guarded = [];
    public function projectsCategory() {
        return $this->belongsTo('App\Models\ProjectsCategory' , 'projects_category_id');
    }
    public function translations($lang,$id)
    {
        return ProjectsTranslation::where(['locale'=>$lang,'projects_id'=>$id])->first();
    }
}
