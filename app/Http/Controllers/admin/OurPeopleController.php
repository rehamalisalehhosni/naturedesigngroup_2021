<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Models\OurPeople;
use App\Models\OurPeopleTranslation;
use App\Models\Languages;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class OurPeopleController extends Controller
{
  /**
  * Display a listing of the resource.
  *
  * @return \Illuminate\Http\Response
  */
  public function index(Request $request)
  {
    $ourPeoples = OurPeople::orderBy('our_people_id','DESC')->paginate(20);
    
    return view('Backend/OurPeople.index',compact('ourPeoples'))->with('i', ($request->input('page', 1) - 1) * 20);
  }

  /**
  * Show the form for creating a new resource.
  *
  * @return \Illuminate\Http\Response
  */
  public function create()
  {
    $languages = Languages::all();
    
    return view('Backend/OurPeople.create',compact('languages'));
  }

  /**
  * Store a newly created resource in storage.
  *
  * @param  \Illuminate\Http\Request  $request
  * @return \Illuminate\Http\Response
  */
  public function setDatMain($request,$lang)
  {
    $this->validate($request, [
      'name_'.$lang => 'required',
    ]);

    $ourPeople = new OurPeople;

    if($file = $request->hasFile('image_'.$lang)) {
      $file = $request->file('image_'.$lang) ;
      $extension = $file->getClientOriginalExtension();
      $fileName =explode('.', $file->getClientOriginalName())[0].time().'.'.$extension;
      $fileName = str_replace(' ', '', $fileName);
      //$fileName = $file->getClientOriginalName() ;
      $destinationPath = public_path().'/Uploads/our_people/'.$lang ;
      if (!file_exists($destinationPath)) {
        mkdir($destinationPath, 0777, true);
      }
      $file->move($destinationPath,$fileName);
      $ourPeople->image = $fileName ;
    }

    $ourPeople->sort =  $request->input('sort_'.$lang);
    $ourPeople->active =  $request->input('active_'.$lang);   

    $ourPeople->save();
    return $ourPeople;
  }
  public function setDataLanguage($request,$lang,$data)
  {
    $ourPeopleTranslation = new OurPeopleTranslation;

    $ourPeopleTranslation->name = $request->input('name_'.$lang);
    $ourPeopleTranslation->title =  $request->input('title_'.$lang);
    $ourPeopleTranslation->our_people_id = $data->our_people_id;
    $ourPeopleTranslation->locale = $lang;
    
    $ourPeopleTranslation->save() ;
  }


  /**
  * Store a newly created resource in storage.
  *
  * @param  \Illuminate\Http\Request  $request
  * @return \Illuminate\Http\Response
  */
  public function store(Request $request)
  {
    $Languages=Languages::get();
    foreach ($Languages as $key => $item) {
      if($key==0){
        $data=$this->setDatMain($request,$item->code);
      }
      $this->setDataLanguage($request,$item->code,$data);
      // code...
    }
    return redirect()->route('ourPeople.index')
    ->with('success','Our People created successfully');
  }

  /**
  * Display the specified resource.
  *
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function show($id)
  {
    //
    $item = OurPeople::find($id);
    return view('Backend/OurPeople.show',compact('item'));
  }
  /**
  * Show the form for editing the specified resource.
  *
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function edit($id)
  {
    $languages=Languages::all();
    $item = OurPeople::find($id);

    return view('Backend/OurPeople.edit',compact('item','languages'));
  }
  /**
  * Update the specified resource in storage.
  *
  * @param  \Illuminate\Http\Request  $request
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function updateDatMain($request,$lang,$id){
    
    $this->validate($request, [
      'name_'.$lang => 'required',
    ]);

    $ourPeople = OurPeople::find($id);

    if($file = $request->hasFile('image_'.$lang)) {
      $file = $request->file('image_'.$lang) ;
      $extension = $file->getClientOriginalExtension();
      $fileName =explode('.', $file->getClientOriginalName())[0].time().'.'.$extension;
      $fileName = str_replace(' ', '', $fileName);
      //$fileName = $file->getClientOriginalName() ;
      $destinationPath = public_path().'/Uploads/our_people/'.$lang ;
      if (!file_exists($destinationPath)) {
        mkdir($destinationPath, 0777, true);
      }
      $file->move($destinationPath,$fileName);
      $ourPeople->image = $fileName ;
    }

    $ourPeople->sort =  $request->input('sort_'.$lang);
    $ourPeople->active =  $request->input('active_'.$lang);     

    $ourPeople->update();
    return $ourPeople;
  }

  public function updateDataLanguage($request,$lang,$data,$servicesId)
  {  
    $id = $request->input('our_people_translations_id_'.$lang);
    $ourPeopleTranslation = OurPeopleTranslation::find($id);
    if($ourPeopleTranslation){
      $exists=true;
      // $ourPeopleTranslation = ourPeopleTranslation::find($id);
    }else{
      $exists=false;
      $ourPeopleTranslation = new OurPeopleTranslation;
    }//$id

    $ourPeopleTranslation->name = $request->input('name_'.$lang);
    $ourPeopleTranslation->title =  $request->input('title_'.$lang);
    $ourPeopleTranslation->our_people_id = $data->our_people_id;
    $ourPeopleTranslation->locale = $lang;   
   
    if($exists){
      $ourPeopleTranslation->update() ;
    }else{
      $ourPeopleTranslation->locale=$lang ;
      $ourPeopleTranslation->our_people_id=$servicesId ;

      $ourPeopleTranslation->save() ;
    }
  }

  /**
  * Update the specified resource in storage.
  *
  * @param  \Illuminate\Http\Request  $request
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function update(Request $request, $id)
  {
    //
    $Languages=Languages::get();
    foreach ($Languages as $key => $item) {
      if($key==0){
        $data=$this->updateDatMain($request,$item->code,$id);
      }
      $this->updateDataLanguage($request,$item->code,$data,$id);
      // code...
    }
    return redirect()->route('ourPeople.index')->with('success','Our People updated successfully');

  }


  /**
  * Remove the specified resource from storage.
  *
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function destroy($id)
  {
    if(OurPeople::find($id)){
      OurPeople::find($id)->delete();
      $affectedRows2 = OurPeopleTranslation::where('our_people_id', '=', $id)->delete();

    }
    return redirect()->route('ourPeople.index')
    ->with('success','Our People deleted successfully');

  }
}
