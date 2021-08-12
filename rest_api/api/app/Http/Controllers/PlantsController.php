<?php

namespace App\Http\Controllers;

use App\Http\Resources\PlantsResource;
use App\Models\plants;
use Illuminate\Http\Request;

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
    'plant' => 'required',
    'family' => 'required',
    'description' => 'required'
    ]);

        $plants=plants::create($request->all());

        return response(new PlantsResource($plants), 201, array('errors' => 'false'));

    }

    /**
     * Show resource
     * @param plants $plants
     * @return \Illuminate\Contracts\Foundation\Application|\Illuminate\Contracts\Routing\ResponseFactory|\Illuminate\Http\Response
     */
    public function show(plants $plants)
    {
        return response($plants, 200, array('errors' => 'false'));

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
        $plants -> update($request->all());

        return response(new PlantsResource($plants), 201, array('errors' => 'false'));

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
