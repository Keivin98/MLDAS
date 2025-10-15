<?php

use Illuminate\Database\Seeder;
use App\MldasSeries;

class MldasSeriesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $series = [
            [
                'year' => '2026',
                'title' => 'MLDAS 2026',
                'url' => 'https://mldas2026.example.com',
                'is_active' => true,
                'sort_order' => 1,
            ],
            [
                'year' => '2025',
                'title' => 'MLDAS 2025',
                'url' => 'https://mldas2025.example.com',
                'is_active' => true,
                'sort_order' => 2,
            ],
            [
                'year' => '2024',
                'title' => 'MLDAS 2024',
                'url' => 'https://mldas2024.example.com',
                'is_active' => true,
                'sort_order' => 3,
            ],
            [
                'year' => '2023',
                'title' => 'MLDAS 2023',
                'url' => 'https://mldas2023.example.com',
                'is_active' => true,
                'sort_order' => 4,
            ],
        ];

        foreach ($series as $item) {
            MldasSeries::create($item);
        }
    }
}
