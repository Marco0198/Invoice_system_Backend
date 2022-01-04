<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class CustomerFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [

            'customer_name' => $this->faker->name(),
            'customer_surname' => $this->faker->name(),
            'customer_email' => $this->faker->email(),
            'customer_phone_number' => $this->faker->phoneNumber(),
            'customer_address' => $this->faker->address(),
        ];
    }
}
