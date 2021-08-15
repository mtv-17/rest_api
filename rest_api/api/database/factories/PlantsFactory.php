<?php

namespace Database\Factories;

use App\Models\Plants;
use Illuminate\Database\Eloquent\Factories\Factory;

class PlantsFactory extends Factory
{

    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Plants::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $num = rand(1,3);
        return [
            'plant' => $this -> faker -> unique()->randomElement(
                [
                    'Абрикос японский', 'Авокадо', 'Алоэ', 'Акация', 'Аглайя'
                ]) ,
            'family' => $this -> faker -> numberBetween(1,5 ),
            'description'=> $this -> faker -> unique()->randomElement(
                [
                    'Дерево высотой 5—7 м, иногда кустарник',
                    'быстрорастущее дерево, достигающее в высоту 20 м',
                    'Короткий стебель (или ствол)',
                    'Акации относятся к числу наиболее быстрорастущих',
                    'Деревья или кустарники высотой от 3 до 40 м'
                ])

        ];
    }
}
