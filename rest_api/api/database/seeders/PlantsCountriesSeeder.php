<?php

namespace Database\Seeders;

use App\Models;
use App\Models\PlantsCountries;
use Illuminate\Database\Seeder;

class PlantsCountriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        PlantsCountries::factory()->times(15)->create();
    }
}
