<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Works extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('works', function (Blueprint $table) {
            $table->id();
            $table->string('link_title');
            $table->string('slug')->unique();
            $table->string('title_short')->nullable();
            $table->string('title_long')->nullable();
            $table->string('year')->nullable();
            $table->string('work_type');
            $table->string('materials_used')->nullable();
            $table->text('description')->nullable();
            $table->string('cover_image')->nullable();
            $table->boolean('front_page')->default(0);
            $table->text('work_images')->nullable();
            $table->string('work_video')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('works');
    }
}
