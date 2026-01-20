<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddSessionFieldsToSchedulesTable extends Migration
{
    public function up()
    {
        Schema::table('schedules', function (Blueprint $table) {
            $table->integer('session_number')->nullable()->after('day_number');
            $table->string('session_name')->nullable()->after('session_number');
            $table->string('session_chair')->nullable()->after('session_name');
        });
    }

    public function down()
    {
        Schema::table('schedules', function (Blueprint $table) {
            $table->dropColumn(['session_number', 'session_name', 'session_chair']);
        });
    }
}


