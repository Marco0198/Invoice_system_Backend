<?php

namespace App\Providers;

use App\Interfaces\InvoiceDetailsRepositoryInterface;
use App\Interfaces\InvoiceRepositoryInterface;
use App\Interfaces\ItemRepositoryInterface;
use App\Repositories\InvoiceDetailsRepository;
use App\Repositories\InvoiceRepository;
use App\Repositories\ItemRepository;
use Illuminate\Support\ServiceProvider;

class RepositoryServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(InvoiceRepositoryInterface::class, InvoiceRepository::class);
        $this->app->bind(InvoiceDetailsRepositoryInterface::class, InvoiceDetailsRepository::class);
        $this->app->bind(ItemRepositoryInterface::class, ItemRepository::class);
    }

    /**
     * Bootstrap services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }
}
