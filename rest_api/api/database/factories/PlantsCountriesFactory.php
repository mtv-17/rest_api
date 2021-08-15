<?php

namespace Database\Factories;

use App\Models;
use App\Models\PlantsCountries;
use Illuminate\Database\Eloquent\Factories\Factory;

class PlantsCountriesFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = PlantsCountries::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {

        return [
            'id_plant'=> $this -> faker -> numberBetween(1,5),
            'id_country'=> $this -> faker -> numberBetween(1,7),
        ];
    }
}


