<?php

namespace Database\Seeders;

use App\Models\plants;
use Illuminate\Database\Seeder;

class PlantsSeeder extends Seeder
{

    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        plants::factory()->times(5)->create();
    }
}
