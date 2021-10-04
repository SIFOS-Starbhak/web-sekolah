<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\Role;

class RolesTableSeeder extends Seeder
{
    /**
     * Auto generated seed file.
     */
    public function run()
    {
        $role = Role::firstOrNew(['name' => 'admin']);
        if (!$role->exists) {
            $role->fill([
                'display_name' => __('voyager::seeders.roles.admin'),
            ])->save();
        }

        $role = Role::firstOrNew(['name' => 'siswa']);
        if (!$role->exists) {
            $role->fill([
                'display_name' => 'Role Siswa',
            ])->save();
        }

        $role = Role::firstOrNew(['name' => 'alumni']);
        if (!$role->exists) {
            $role->fill([
                'display_name' => 'Role Alumni',
            ])->save();
        }

        $role = Role::firstOrNew(['name' => 'guru']);
        if (!$role->exists) {
            $role->fill([
                'display_name' => 'Role Guru',
            ])->save();
        }

        $role = Role::firstOrNew(['name' => 'manager']);
        if (!$role->exists) {
            $role->fill([
                'display_name' => 'Role Manager',
            ])->save();
        }
    }
}
