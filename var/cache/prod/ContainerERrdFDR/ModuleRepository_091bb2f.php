<?php

class ModuleRepository_091bb2f extends \PrestaShop\PrestaShop\Core\Module\ModuleRepository implements \ProxyManager\Proxy\VirtualProxyInterface
{
    private $valueHoldera3713 = null;
    private $initializer80a1e = null;
    private static $publicProperties3e219 = [
        
    ];
    public function getList() : \PrestaShop\PrestaShop\Core\Module\ModuleCollection
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getList', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getList();
    }
    public function getInstalledModules() : \PrestaShop\PrestaShop\Core\Module\ModuleCollection
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getInstalledModules', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getInstalledModules();
    }
    public function getMustBeConfiguredModules() : \PrestaShop\PrestaShop\Core\Module\ModuleCollection
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getMustBeConfiguredModules', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getMustBeConfiguredModules();
    }
    public function getUpgradableModules() : \PrestaShop\PrestaShop\Core\Module\ModuleCollection
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getUpgradableModules', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getUpgradableModules();
    }
    public function getModule(string $moduleName) : \PrestaShop\PrestaShop\Core\Module\ModuleInterface
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getModule', array('moduleName' => $moduleName), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getModule($moduleName);
    }
    public function getModulePath(string $moduleName) : ?string
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getModulePath', array('moduleName' => $moduleName), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getModulePath($moduleName);
    }
    public function setActionUrls(\PrestaShop\PrestaShop\Core\Module\ModuleCollection $collection) : \PrestaShop\PrestaShop\Core\Module\ModuleCollection
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'setActionUrls', array('collection' => $collection), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->setActionUrls($collection);
    }
    public function clearCache(?string $moduleName = null, bool $allShops = false) : bool
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'clearCache', array('moduleName' => $moduleName, 'allShops' => $allShops), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->clearCache($moduleName, $allShops);
    }
    public static function staticProxyConstructor($initializer)
    {
        static $reflection;
        $reflection = $reflection ?? new \ReflectionClass(__CLASS__);
        $instance   = $reflection->newInstanceWithoutConstructor();
        \Closure::bind(function (\PrestaShop\PrestaShop\Core\Module\ModuleRepository $instance) {
            unset($instance->moduleDataProvider, $instance->adminModuleDataProvider, $instance->hookManager, $instance->cacheProvider, $instance->modulePath, $instance->installedModules, $instance->modulesFromHook, $instance->contextLangId);
        }, $instance, 'PrestaShop\\PrestaShop\\Core\\Module\\ModuleRepository')->__invoke($instance);
        $instance->initializer80a1e = $initializer;
        return $instance;
    }
    public function __construct(\PrestaShop\PrestaShop\Adapter\Module\ModuleDataProvider $moduleDataProvider, \PrestaShop\PrestaShop\Adapter\Module\AdminModuleDataProvider $adminModuleDataProvider, \Doctrine\Common\Cache\CacheProvider $cacheProvider, \PrestaShop\PrestaShop\Adapter\HookManager $hookManager, string $modulePath, int $contextLangId)
    {
        static $reflection;
        if (! $this->valueHoldera3713) {
            $reflection = $reflection ?? new \ReflectionClass('PrestaShop\\PrestaShop\\Core\\Module\\ModuleRepository');
            $this->valueHoldera3713 = $reflection->newInstanceWithoutConstructor();
        \Closure::bind(function (\PrestaShop\PrestaShop\Core\Module\ModuleRepository $instance) {
            unset($instance->moduleDataProvider, $instance->adminModuleDataProvider, $instance->hookManager, $instance->cacheProvider, $instance->modulePath, $instance->installedModules, $instance->modulesFromHook, $instance->contextLangId);
        }, $this, 'PrestaShop\\PrestaShop\\Core\\Module\\ModuleRepository')->__invoke($this);
        }
        $this->valueHoldera3713->__construct($moduleDataProvider, $adminModuleDataProvider, $cacheProvider, $hookManager, $modulePath, $contextLangId);
    }
    public function & __get($name)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, '__get', ['name' => $name], $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        if (isset(self::$publicProperties3e219[$name])) {
            return $this->valueHoldera3713->$name;
        }
        $realInstanceReflection = new \ReflectionClass('PrestaShop\\PrestaShop\\Core\\Module\\ModuleRepository');
        if (! $realInstanceReflection->hasProperty($name)) {
            $targetObject = $this->valueHoldera3713;
            $backtrace = debug_backtrace(false, 1);
            trigger_error(
                sprintf(
                    'Undefined property: %s::$%s in %s on line %s',
                    $realInstanceReflection->getName(),
                    $name,
                    $backtrace[0]['file'],
                    $backtrace[0]['line']
                ),
                \E_USER_NOTICE
            );
            return $targetObject->$name;
        }
        $targetObject = $this->valueHoldera3713;
        $accessor = function & () use ($targetObject, $name) {
            return $targetObject->$name;
        };
        $backtrace = debug_backtrace(true, 2);
        $scopeObject = isset($backtrace[1]['object']) ? $backtrace[1]['object'] : new \ProxyManager\Stub\EmptyClassStub();
        $accessor = $accessor->bindTo($scopeObject, get_class($scopeObject));
        $returnValue = & $accessor();
        return $returnValue;
    }
    public function __set($name, $value)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, '__set', array('name' => $name, 'value' => $value), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        $realInstanceReflection = new \ReflectionClass('PrestaShop\\PrestaShop\\Core\\Module\\ModuleRepository');
        if (! $realInstanceReflection->hasProperty($name)) {
            $targetObject = $this->valueHoldera3713;
            $targetObject->$name = $value;
            return $targetObject->$name;
        }
        $targetObject = $this->valueHoldera3713;
        $accessor = function & () use ($targetObject, $name, $value) {
            $targetObject->$name = $value;
            return $targetObject->$name;
        };
        $backtrace = debug_backtrace(true, 2);
        $scopeObject = isset($backtrace[1]['object']) ? $backtrace[1]['object'] : new \ProxyManager\Stub\EmptyClassStub();
        $accessor = $accessor->bindTo($scopeObject, get_class($scopeObject));
        $returnValue = & $accessor();
        return $returnValue;
    }
    public function __isset($name)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, '__isset', array('name' => $name), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        $realInstanceReflection = new \ReflectionClass('PrestaShop\\PrestaShop\\Core\\Module\\ModuleRepository');
        if (! $realInstanceReflection->hasProperty($name)) {
            $targetObject = $this->valueHoldera3713;
            return isset($targetObject->$name);
        }
        $targetObject = $this->valueHoldera3713;
        $accessor = function () use ($targetObject, $name) {
            return isset($targetObject->$name);
        };
        $backtrace = debug_backtrace(true, 2);
        $scopeObject = isset($backtrace[1]['object']) ? $backtrace[1]['object'] : new \ProxyManager\Stub\EmptyClassStub();
        $accessor = $accessor->bindTo($scopeObject, get_class($scopeObject));
        $returnValue = $accessor();
        return $returnValue;
    }
    public function __unset($name)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, '__unset', array('name' => $name), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        $realInstanceReflection = new \ReflectionClass('PrestaShop\\PrestaShop\\Core\\Module\\ModuleRepository');
        if (! $realInstanceReflection->hasProperty($name)) {
            $targetObject = $this->valueHoldera3713;
            unset($targetObject->$name);
            return;
        }
        $targetObject = $this->valueHoldera3713;
        $accessor = function () use ($targetObject, $name) {
            unset($targetObject->$name);
            return;
        };
        $backtrace = debug_backtrace(true, 2);
        $scopeObject = isset($backtrace[1]['object']) ? $backtrace[1]['object'] : new \ProxyManager\Stub\EmptyClassStub();
        $accessor = $accessor->bindTo($scopeObject, get_class($scopeObject));
        $accessor();
    }
    public function __clone()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, '__clone', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        $this->valueHoldera3713 = clone $this->valueHoldera3713;
    }
    public function __sleep()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, '__sleep', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return array('valueHoldera3713');
    }
    public function __wakeup()
    {
        \Closure::bind(function (\PrestaShop\PrestaShop\Core\Module\ModuleRepository $instance) {
            unset($instance->moduleDataProvider, $instance->adminModuleDataProvider, $instance->hookManager, $instance->cacheProvider, $instance->modulePath, $instance->installedModules, $instance->modulesFromHook, $instance->contextLangId);
        }, $this, 'PrestaShop\\PrestaShop\\Core\\Module\\ModuleRepository')->__invoke($this);
    }
    public function setProxyInitializer(\Closure $initializer = null) : void
    {
        $this->initializer80a1e = $initializer;
    }
    public function getProxyInitializer() : ?\Closure
    {
        return $this->initializer80a1e;
    }
    public function initializeProxy() : bool
    {
        return $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'initializeProxy', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
    }
    public function isProxyInitialized() : bool
    {
        return null !== $this->valueHoldera3713;
    }
    public function getWrappedValueHolderValue()
    {
        return $this->valueHoldera3713;
    }
}
