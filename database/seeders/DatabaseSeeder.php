<?php

namespace Database\Seeders;

use App\Models\User;
// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // User::factory(10)->create();

        User::factory()->create([
            'name' => 'Khắc Nhựt',
            'email' => 'khacnhut2004vlg@gmail.com',
            'password' => Hash::make('admin@123'),
        ]);
        User::factory()->create([
            'name' => 'Guset',
            'email' => '22004294@st.vlute.edu.vn',
            'password' => Hash::make('guest@123'),
        ]);
        User::factory()->create([
            'name' => 'Hazaki',
            'email' => 'hazaki@gmail.com',
            'password' => Hash::make('hazaki@123'),
        ]);
    }
}
