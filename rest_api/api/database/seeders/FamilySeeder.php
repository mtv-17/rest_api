<?php

namespace Database\Seeders;

use App\Models\family;
use Illuminate\Database\Seeder;

class FamilySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        family::factory()->times(5)->create();
    }
}
