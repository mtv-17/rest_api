<?php

namespace Database\Seeders;

use App\Models\country;
use Illuminate\Database\Seeder;

class CountrySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        country::factory()->times(7)->create();
    }
}
