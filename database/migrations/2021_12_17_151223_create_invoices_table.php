<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateInvoicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {


        Schema::create('invoices', function (Blueprint $table) {
            $table->increments('invoice_id');
            $table->date('invoice_date');
            $table->string('invoice_number');
            $table->string('customer_id');
            $table->date('invoice_due_date');
            $table->string('receiver_name');
            $table->string('receiver_company_name');
            $table->string('receiver_address');
            $table->string('receiver_city');
            $table->string('receiver_phone_number');
            $table->float('subtotal');
            $table->float('taxable');
            $table->float('tax_rate');
            $table->float('tax_due');
            $table->float('other')->nullable();
            $table->float('total_amount');
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
        Schema::dropIfExists('invoices');
    }
}
