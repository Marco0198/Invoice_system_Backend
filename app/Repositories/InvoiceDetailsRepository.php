<?php

namespace App\Repositories;

use App\Interfaces\InvoiceDetailsRepositoryInterface;
use Illuminate\Support\Facades\DB;

class InvoiceDetailsRepository implements InvoiceDetailsRepositoryInterface
{

    /**
     * @return mixed
     */
    public function getAllInvoiceDetails()
    {
        return $statement = DB::select(
            /** @lang text */
            " SELECT  item_id,item_name,item_price, item_description FROM  items;"
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

    // this methods is responsible of inserting invoice item in the invoices_items table
    public function createInvoiceDetails(array $invoiceDetails)
    {
        try {
            DB::insert(
                /** @lang text */
                "insert into invoices_items (item_description,item_price,invoice_number)
            VALUES (?,?,?)",
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
    public function updateInvoiceDetails($InvoiceId, array $newDetails)
    {
        // TODO: Implement updateInvoiceDetails() method.
    }
}
