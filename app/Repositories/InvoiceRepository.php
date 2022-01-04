<?php

namespace App\Repositories;

use App\Interfaces\InvoiceRepositoryInterface;
use Illuminate\Support\Facades\DB;

class InvoiceRepository implements InvoiceRepositoryInterface
{

    /**
     * @return mixed
     */
    public function getAllInvoices()
    {

        return $statement = DB::select(
            /** @lang text */
            " SELECT *  FROM  invoices;"
        );
    }

    /**
     * @param $orderId
     * @return mixed
     */
    public function deleteInvoice($orderId)
    {
        // TODO: Implement deleteInvoice() method.
    }

    /**
     * @param array $invoiceDetails
     * @return mixed
     */
    // this methods is responsible of inserting invoice details  in the invoices table
    public function createInvoice(array $invoiceDetails)
    {
        try {
            // this is the database query that i used to insert data in the invoices table

            DB::insert(
                /** @lang text */
                'insert into invoices (invoice_date,invoice_number,
            customer_id,invoice_due_date,receiver_name,receiver_company_name,receiver_address,
            receiver_city,receiver_phone_number,subtotal,taxable,tax_rate,tax_due,other,total_amount)
            VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',
                $invoiceDetails
            );
        } catch (\PDOException $e) {
            exit($e->getMessage());
        }
    }

    /**
     * @param $InvoiceId
     * @param array $newDetails
     * @return mixed
     */
    public function updateInvoice($InvoiceId, array $newDetails)
    {
        // TODO: Implement updateInvoice() method.
    }
}
