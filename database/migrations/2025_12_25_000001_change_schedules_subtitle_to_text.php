<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChangeSchedulesSubtitleToText extends Migration
{
    public function up()
    {
        Schema::table('schedules', function (Blueprint $table) {
            $table->text('subtitle')->nullable()->change();
        });
    }

    public function down()
    {
        Schema::table('schedules', function (Blueprint $table) {
            $table->string('subtitle')->nullable()->change();
        });
    }
}


