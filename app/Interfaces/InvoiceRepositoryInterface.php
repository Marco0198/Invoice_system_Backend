<?php

namespace App\Interfaces;

interface InvoiceRepositoryInterface
{
    public function getAllInvoices();
    public function deleteInvoice($orderId);
    public function createInvoice(array $invoiceDetails);
    public function updateInvoice($InvoiceId, array $newDetails);

}
