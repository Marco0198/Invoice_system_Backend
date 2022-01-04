<?php

namespace App\Interfaces;

interface ItemRepositoryInterface
{
    public function getAllItems();
    public function deleteItem($orderId);
    public function createItem(array $itemDetails);
    public function updateInvoice($ItemId, array $newDetails);
}
