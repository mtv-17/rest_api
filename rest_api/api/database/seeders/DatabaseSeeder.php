<?php

namespace Database\Seeders;

use App\Http\Resources\PlantsResource;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $this->call(FamilySeeder::class);
        $this->call(PlantsSeeder::class);
        $this->call(CountrySeeder::class);
        $this->call(PlantsCountriesSeeder::class);
    }
}
