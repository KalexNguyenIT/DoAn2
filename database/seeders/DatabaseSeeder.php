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
        User::factory()->create([
            'name' => 'Khắc Nhựt',
            'email' => 'khacnhut2004vlg@gmail.com',
            'password' => Hash::make('admin@123'),
            'id_q' => 1,
            'id_cb' => 1,
        ]);
    }
}
