<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use TCG\Voyager\Models\Setting;

class SettingsTableSeeder extends Seeder
{
    /**
     * Auto generated seed file.
     */
    public function run()
    {
        $setting = $this->findSetting('site.title');
        if (!$setting->exists) {
            $setting->fill([
                'display_name' => __('voyager::seeders.settings.site.title'),
                'value' => '<h1 style="box-sizing: border-box; margin: 0px; line-height: 56px; font-size: 48px; font-family: Poppins, sans-serif; color: #ffffff;"><span style="color: #ffffff;">Learning Today, </span></h1><h1 style="box-sizing: border-box; margin: 0px; line-height: 56px; font-size: 48px; font-family: Poppins, sans-serif; color: #ffffff;"><span style="color: #ffffff;">Leading Tomorrow</span></h1>',
                'details' => '',
                'type' => 'rich_text_box',
                'order' => 1,
                'group' => 'Site',
            ])->save();
        }

        $setting = $this->findSetting('site.description');
        if (!$setting->exists) {
            $setting->fill([
                'display_name' => __('voyager::seeders.settings.site.description'),
                'value' => 'We are team of talented designers making websites with Bootstrap',
                'details' => '',
                'type' => 'text',
                'order' => 2,
                'group' => 'Site',
            ])->save();
        }

        $setting = $this->findSetting('site.logo');
        if (!$setting->exists) {
            $setting->fill([
                'display_name' => __('voyager::seeders.settings.site.logo'),
                'value' => 'settings\October2021\GtJrKWf2VN7hY3Ojxy6x.png',
                'details' => '',
                'type' => 'image',
                'order' => 3,
                'group' => 'Site',
            ])->save();
        }

        $setting = $this->findSetting('site.jumbotron');
        if (!$setting->exists) {
            $setting->fill([
                'display_name' => 'Site Jumbotron',
                'value' => 'settings\October2021\SzObr0H0ibTgulV2p9K5.jpg',
                'details' => '',
                'type' => 'image',
                'order' => 6,
                'group' => 'Site',
            ])->save();
        }

        $setting = $this->findSetting('site.virtual_tour');
        if (!$setting->exists) {
            $setting->fill([
                'display_name' => 'Virtual Tour',
                'value' => 'https: //kuula.co/share/collection/7YQlT?fs=1&vr=1&sd=1&initload=0&thumbs=1&info=0&logo=1&logosize=40',
                'details' => '',
                'type' => 'text',
                'order' => 7,
                'group' => 'Site',
            ])->save();
        }

        $setting = $this->findSetting('site.google_analytics_tracking_id');
        if (!$setting->exists) {
            $setting->fill([
                'display_name' => __('voyager::seeders.settings.site.google_analytics_tracking_id'),
                'value' => '',
                'details' => '',
                'type' => 'text',
                'order' => 4,
                'group' => 'Site',
            ])->save();
        }

        $setting = $this->findSetting('admin.bg_image');
        if (!$setting->exists) {
            $setting->fill([
                'display_name' => __('voyager::seeders.settings.admin.background_image'),
                'value' => '',
                'details' => '',
                'type' => 'image',
                'order' => 5,
                'group' => 'Admin',
            ])->save();
        }

        $setting = $this->findSetting('admin.title');
        if (!$setting->exists) {
            $setting->fill([
                'display_name' => __('voyager::seeders.settings.admin.title'),
                'value' => 'Voyager',
                'details' => '',
                'type' => 'text',
                'order' => 1,
                'group' => 'Admin',
            ])->save();
        }

        $setting = $this->findSetting('admin.description');
        if (!$setting->exists) {
            $setting->fill([
                'display_name' => __('voyager::seeders.settings.admin.description'),
                'value' => __('voyager::seeders.settings.admin.description_value'),
                'details' => '',
                'type' => 'text',
                'order' => 2,
                'group' => 'Admin',
            ])->save();
        }

        $setting = $this->findSetting('admin.loader');
        if (!$setting->exists) {
            $setting->fill([
                'display_name' => __('voyager::seeders.settings.admin.loader'),
                'value' => '',
                'details' => '',
                'type' => 'image',
                'order' => 3,
                'group' => 'Admin',
            ])->save();
        }

        $setting = $this->findSetting('admin.icon_image');
        if (!$setting->exists) {
            $setting->fill([
                'display_name' => __('voyager::seeders.settings.admin.icon_image'),
                'value' => '',
                'details' => '',
                'type' => 'image',
                'order' => 4,
                'group' => 'Admin',
            ])->save();
        }

        $setting = $this->findSetting('admin.google_analytics_client_id');
        if (!$setting->exists) {
            $setting->fill([
                'display_name' => __('voyager::seeders.settings.admin.google_analytics_client_id'),
                'value' => '',
                'details' => '',
                'type' => 'text',
                'order' => 1,
                'group' => 'Admin',
            ])->save();
        }
    }

    /**
     * [setting description].
     *
     * @param [type] $key [description]
     *
     * @return [type] [description]
     */
    protected function findSetting($key)
    {
        return Setting::firstOrNew(['key' => $key]);
    }
}
