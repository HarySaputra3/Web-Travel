<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
use Spatie\Permission\Models\Role;

class RolePermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $permissions = [
            'manage categories',
            'manage packages',
            'manage transactions',
            'manage package banks',
            'checkout package',
            'view orders',
        ];
        foreach ($permissions as $permission) {
            Permission::firstOrCreate([
                'name' => $permission
            ]);
        }
        $customerRole = Role::firstOrCreate([
            'name' => 'customer'
        ]);
        $customerPermissions = [
            'checkout package',
            'view orders'
        ];
        $customerRole->syncPermissions($customerPermissions);

        $superAdminRole = Role::firstOrCreate([
            'name' => 'Super_Admin',
        ]);

        $user = User::create([
            'name' => 'Super_Admin',
            'email' => 'admin@example.com',
            'phone_number' => '1087774444',
            'avatar' => '',
            'password' => bcrypt('secret'),
        ]);

        $user->assignRole($superAdminRole);
    }
}
