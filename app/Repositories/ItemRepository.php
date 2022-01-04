<?php

namespace App\Repositories;

use App\Interfaces\ItemRepositoryInterface;
use Illuminate\Support\Facades\DB;

class ItemRepository implements ItemRepositoryInterface
{

    /**
     * @return mixed
     */
    public function getAllItems()
    {
        // TODO: Implement deleteItem() method.
    }

    /**
     * @param $orderId
     * @return mixed
     */
    public function deleteItem($orderId)
    {
        // TODO: Implement deleteItem() method.
    }

    /**
     * @param array $itemDetails
     * @return mixed
     */
    public function createItem(array $itemDetails)
    {
        // TODO: Implement createItem() method.
    }

    /**
     * @param $ItemId
     * @param array $newDetails
     * @return mixed
     */
    public function updateInvoice($ItemId, array $newDetails)
    {
        // TODO: Implement updateInvoice() method.
    }
}
