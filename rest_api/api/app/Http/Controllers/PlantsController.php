<?php

namespace App\Http\Controllers;

use App\Http\Resources\PlantsCountriesResource;
use App\Http\Resources\PlantsResource;
use App\Models\plants;
use App\Models\PlantsCountries;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use function MongoDB\BSON\toJSON;

class PlantsController extends Controller
{

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $request->validate([
        'plant' => 'required|string|max:255',
        'family' => 'required|integer|min:1|max:5',
        'description' => 'required|string|max:255'
        ]);

        $plants=plants::create($request->all());

        return response(new PlantsResource($plants), 201, array('errors' => 'false'));

    }

    /**
     * Show resource
     * @param plants $plants
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\Response
     */
    public function show(plants $plants){

        $plants = DB::table('plants')
            ->join('families', 'plants.family', '=', 'families.id')
            ->join('plants_countries', 'plants.id', '=', 'plants_countries.id_plant')
            ->join('countries', 'plants_countries.id_country', '=', 'countries.id')
            ->select('plants.*', 'families.family', 'countries.country')
            ->get();

        return $plants;

    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param plants $plants
     * @return \Illuminate\Http\JsonResponse|object
     */
    public function update(Request $request, plants $plants)
    {
        $request->validate([
            'plant' => 'required|string|max:255',
            'family' => 'required|integer|min:1|max:5',
            'description' => 'required|string|max:255',
        ]);

        $plants -> update($request->all());


        return new PlantsResource($plants);


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param plants $plants
     * @return \Illuminate\Http\JsonResponse
     */
    public function destroy(plants $plants)
    {

        $plants->delete();
            return response()->json();
    }

}
