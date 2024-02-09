<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('books', function (Blueprint $table) {
            $table->id();
            $table->string('title');
            $table->string('title_long')->nullable();
            $table->string('isbn');
            $table->string('isbn13');
            $table->string('dewey_decimal');
            $table->string('binding');
            $table->string('publisher');
            $table->datetime('date_published');
            $table->datetime('edition');
            $table->integer('pages');
            $table->string('dimensions');
            $table->string('overview');
            $table->string('image');
            $table->integer('msrp');
            $table->string('excerpt');
            $table->string('synopsis');
            $table->integer('created_by')->nullable();
            $table->integer('updated_by')->nullable();
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
        Schema::dropIfExists('books');
    }
};
