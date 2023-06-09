<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        \App\Models\Role::create(['name'=>'student']); #1
        \App\Models\Role::create(['name'=>'teacher']); #2
        \App\Models\Role::create(['name'=>'admin']); #3


        \App\Models\User::factory()->create([
            'name' => 'Profesor',
            'email' => 'profesor@example.com',
            'password' => bcrypt('12345678'),
            'role_id' => 1
        ]);

        \App\Models\User::factory()->create([
            'name' => 'Alumno',
            'email' => 'alumno@example.com',
            'password' => bcrypt('87654321'),
            'role_id' => 2
        ]);
        
        \App\Models\User::factory()->create([
            'name' => 'Admin',
            'email' => 'admin@example.com',
            'password' => bcrypt('12345678'),
            'role_id' => 3
        ]);

        \App\Models\User::factory(10)->create([
            'password' => bcrypt('87654321'),            
        ]);

    }
}
