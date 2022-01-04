<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ItemFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
             'item_name'=> $this->faker->name(),
             'item_description'=> $this->faker->sentence(),
             'item_price'=> $this->faker->randomFloat(500.00,8000.00)
        ];
    }
}
