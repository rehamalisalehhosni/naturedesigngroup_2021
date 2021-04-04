<?php

namespace App\Http\Controllers\admin;

use Illuminate\Http\Request;
use App\Models\Offices;
use App\Models\OfficesTranslation;
use App\Models\Languages;
use App\Http\Requests;
use App\Http\Controllers\Controller;

class OfficesController extends Controller
{
  /**
  * Display a listing of the resource.
  *
  * @return \Illuminate\Http\Response
  */
  public function index(Request $request)
  {
    $offices = Offices::orderBy('offices_id','DESC')->paginate(20);
    
    return view('Backend/Offices.index',compact('offices'))->with('i', ($request->input('page', 1) - 1) * 20);
  }

  /**
  * Show the form for creating a new resource.
  *
  * @return \Illuminate\Http\Response
  */
  public function create()
  {
    $languages = Languages::all();
    
    return view('Backend/Offices.create',compact('languages'));
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
      'title_'.$lang => 'required',
      'address_'.$lang => 'required',
    ]);

    $office = new Offices;
    $office->phone = $request->input('phone_'.$lang);
    $office->fax =  $request->input('fax_'.$lang);
    $office->email =  $request->input('email_'.$lang);
    $office->sort =  $request->input('sort_'.$lang);
    $office->active =  $request->input('active_'.$lang);
    $office->lat =  $request->input('lat_'.$lang);
    $office->lng =  $request->input('lng_'.$lang);    

    $office->save();
    return $office;
  }
  public function setDataLanguage($request,$lang,$data)
  {
    $officeTranslation = new OfficesTranslation;

    $officeTranslation->title = $request->input('title_'.$lang);
    $officeTranslation->address =  $request->input('address_'.$lang);
    $officeTranslation->offices_id = $data->offices_id;
    $officeTranslation->locale = $lang;
    
    $officeTranslation->save() ;
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
    return redirect()->route('offices.index')
    ->with('success','Office created successfully');
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
    $item = Offices::find($id);
    return view('Backend/Offices.show',compact('item'));
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
    $item = Offices::find($id);
    return view('Backend/Offices.edit',compact('item','languages'));
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
      'title_'.$lang => 'required',
      'address_'.$lang => 'required',
    ]);

    $office = Offices::find($id);
    $office->phone = $request->input('phone_'.$lang);
    $office->fax =  $request->input('fax_'.$lang);
    $office->email =  $request->input('email_'.$lang);
    $office->lat =  $request->input('lat_'.$lang);
    $office->lng =  $request->input('lng_'.$lang);     
    $office->sort =  $request->input('sort_'.$lang);
    $office->active =  $request->input('active_'.$lang);    

    $office->update();
    return $office;
  }

  public function updateDataLanguage($request,$lang,$data,$servicesId)
  {  
    $id = $request->input('offices_translations_id_'.$lang);
    $officesTranslation = OfficesTranslation::find($id);
    if($officesTranslation){
      $exists=true;
      // $officesTranslation = OfficesTranslation::find($id);
    }else{
      $exists=false;
      $officesTranslation = new OfficesTranslation;
    }//$id

    $officesTranslation->title = $request->input('title_'.$lang);
    $officesTranslation->address =  $request->input('address_'.$lang);
    $officesTranslation->offices_id = $data->offices_id;
    $officesTranslation->locale = $lang;   
   
    if($exists){
      $officesTranslation->update() ;
    }else{
      $officesTranslation->locale=$lang ;
      $officesTranslation->offices_id=$servicesId ;

      $officesTranslation->save() ;
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
    return redirect()->route('offices.index')
    ->with('success','Office updated successfully');

  }


  /**
  * Remove the specified resource from storage.
  *
  * @param  int  $id
  * @return \Illuminate\Http\Response
  */
  public function destroy($id)
  {
    if(Offices::find($id)){
      Offices::find($id)->delete();
      $affectedRows2 = OfficesTranslation::where('offices_id', '=', $id)->delete();

    }
    return redirect()->route('offices.index')
    ->with('success','Office deleted successfully');

  }
}
