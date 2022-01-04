<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreInvoiceRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'customer_id' => 'required|exists:customers,customer_id',
            'invoice_date' => 'required|date',
            'receiver_name' => 'required|string|max:256',
            'receiver_company_name' => 'required|string|max:256',
            'receiver_address' => 'required|string|max:256',
            'receiver_city' => 'required|string|max:256',
            'receiver_phone_number' => 'required|string|max:256',
            'subtotal' => 'required|numeric',
            'taxable' => 'required|numeric',
            'tax_due' => 'required|numeric',
            'tax_rate' => 'required|numeric',
            'other' => 'nullable|numeric',
            'total_amount' => 'required|numeric',
            'invoice_number' => 'required|string|unique:invoices',
            'invoice_due_date' => 'required|date',
            // "item_description" => 'required|string|max:256',
            // "item_price" => 'required|numeric',
        ];
    }
}
