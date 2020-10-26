<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Faker\Factory as Faker;

class ProductsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create('lt_LT');
        foreach(range(1,100) as $value) {
            DB::table('products')->insert([
                'name' => $faker->randomElement([
                    'Jacket', 'Shorts', 'Fullcap', 'Hat', 'Umbrela', 'Rainpants'
                ]),
                'price' => $faker->randomFloat(3, 1, 200),
                'item_code' => $faker->regexify('[A-Za-z0-9]{3}'),
                'weather_condition' => $faker->randomElement([
                    'clear', 'fog', 'heavy-rain', 'heavy-snow', 'isolated-clouds', 'light-rain', 'light-snow', 'moderate-rain', 'moderate-snow', 'overcast', 'scattered-clouds', 'sleet'
                ]),
            ]);
        }
    }
}
