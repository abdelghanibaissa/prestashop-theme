<?php

use Symfony\Component\DependencyInjection\Argument\RewindableGenerator;
use Symfony\Component\DependencyInjection\Exception\RuntimeException;

// This file has been auto-generated by the Symfony Dependency Injection Component for internal use.
// Returns the public 'form.type.sell.product.combination.bulk_combination_images_type' shared service.

return $this->services['form.type.sell.product.combination.bulk_combination_images_type'] = new \PrestaShopBundle\Form\Admin\Sell\Product\Combination\BulkCombinationImagesType(($this->services['translator'] ?? $this->getTranslatorService()), ($this->services['PrestaShop\\PrestaShop\\Adapter\\LegacyContext'] ?? $this->getLegacyContextService())->getLanguages());
