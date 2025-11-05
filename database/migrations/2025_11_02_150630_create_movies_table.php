<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('movies', function (Blueprint $table) {
            $table->id();
            $table->string('name', 150)->unique();
            $table->string('slug', 150)->unique();
            $table->string('genre', 150);
            $table->string('audio', 50);
            $table->string('age_limit', 10)->nullable();
            $table->string('duration', 50);
            $table->date('premiere_date');
            $table->string('format', 50);
            $table->string('sound', 50);
            $table->string('actors', 255);
            $table->string('director', 100);
            $table->text('synopsis');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('movies');
    }
};