<?php

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.
// Returns the private '.service_locator.C1dJqvR' shared service.

return $this->privates['.service_locator.C1dJqvR'] = new \Symfony\Component\DependencyInjection\Argument\ServiceLocator($this->getService, [
    'combinationFilters' => ['privates', '.errored..service_locator.C1dJqvR.PrestaShop\\PrestaShop\\Core\\Search\\Filters\\ProductCombinationFilters', NULL, 'Cannot autowire service ".service_locator.C1dJqvR": it references class "PrestaShop\\PrestaShop\\Core\\Search\\Filters\\ProductCombinationFilters" but no such service exists.'],
], [
    'combinationFilters' => 'PrestaShop\\PrestaShop\\Core\\Search\\Filters\\ProductCombinationFilters',
]);
