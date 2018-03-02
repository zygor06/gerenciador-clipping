<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateLegislacaosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tb_legislacao', function (Blueprint $table) {
            $table->increments('id');

            $table->string('texto', 1000);
            $table->integer('clipping_id')->unsigned();
            $table->foreign('clipping_id')->references('id')->on('tb_clipping')->onDelete('cascade');

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
        Schema::dropIfExists('tb_legislacao');
    }
}
