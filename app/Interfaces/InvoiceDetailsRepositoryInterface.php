<?php

namespace App\Interfaces;

interface InvoiceDetailsRepositoryInterface
{
    public function getAllInvoiceDetails();
    public function deleteInvoice($orderId);
    public function createInvoiceDetails(array $invoiceDetails);
    public function updateInvoiceDetails($InvoiceId, array $newDetails);
}
