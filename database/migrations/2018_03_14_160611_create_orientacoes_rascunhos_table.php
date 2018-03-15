<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOrientacoesRascunhosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orientacoes_rascunhos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('titulo');
            $table->string('link');
            $table->integer('tipo');
            $table->integer('clipping_id');

            $table->foreign('tipo')->references('id')->on('tipo');
            $table->foreign('clipping_id')->references('id')->on('clipping');

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
        Schema::dropIfExists('orientacoes_rascunhos');
    }
}
