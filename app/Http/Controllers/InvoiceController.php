<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreInvoiceRequest;
use App\Interfaces\InvoiceDetailsRepositoryInterface;
use App\Interfaces\InvoiceRepositoryInterface;


class InvoiceController extends Controller
{
    private InvoiceRepositoryInterface $invoiceRepository;
    private InvoiceDetailsRepositoryInterface $invoiceDetailsRepository;


    public function __construct(InvoiceRepositoryInterface $invoiceRepository, InvoiceDetailsRepositoryInterface $invoiceDetailsRepository)

    {
        $this->invoiceRepository = $invoiceRepository;
        $this->invoiceDetailsRepository = $invoiceDetailsRepository;
    }

    public function index(): \Illuminate\Http\JsonResponse
    {
        $data = $this->invoiceRepository->getAllInvoices();
        return response()->json([
            "data" => $data
        ]);
    }


    public function createInvoice(StoreInvoiceRequest $request)
    {


        try {
            if ($items = $request->get('invoice_items')) {
                foreach ($items as $item) {
                    $this->invoiceDetailsRepository->createInvoiceDetails([
                        $item['description'],
                        $item['price'],
                        $item['invoice_number'],

                    ]);
                }
            }
        } catch (\Exception $e) {

            return $e->getMessage();
        }

        $invoice = $this->invoiceRepository->createInvoice([
            $request->input('invoice_date'),
            $request->input('invoice_number'),
            $request->input('customer_id'),
            $request->input('invoice_due_date'),
            $request->input('receiver_name'),
            $request->input('receiver_company_name'),
            $request->input('receiver_city'),
            $request->input('receiver_address'),
            $request->input('receiver_phone_number'),
            $request->input('subtotal'),
            $request->input('taxable'),
            $request->input('tax_rate'),
            $request->input('tax_due'),
            $request->input('other'),
            $request->input('total_amount'),
        ]);
        return response()->json(["message" => " Your invoice has been successfully created", "success" => true], 201);
    }
}
