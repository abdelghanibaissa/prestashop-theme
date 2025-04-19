<?php

class EntityManager_9a5be93 extends \Doctrine\ORM\EntityManager implements \ProxyManager\Proxy\VirtualProxyInterface
{
    private $valueHoldera3713 = null;
    private $initializer80a1e = null;
    private static $publicProperties3e219 = [
        
    ];
    public function getConnection()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getConnection', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getConnection();
    }
    public function getMetadataFactory()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getMetadataFactory', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getMetadataFactory();
    }
    public function getExpressionBuilder()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getExpressionBuilder', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getExpressionBuilder();
    }
    public function beginTransaction()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'beginTransaction', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->beginTransaction();
    }
    public function getCache()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getCache', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getCache();
    }
    public function transactional($func)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'transactional', array('func' => $func), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->transactional($func);
    }
    public function wrapInTransaction(callable $func)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'wrapInTransaction', array('func' => $func), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->wrapInTransaction($func);
    }
    public function commit()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'commit', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->commit();
    }
    public function rollback()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'rollback', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->rollback();
    }
    public function getClassMetadata($className)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getClassMetadata', array('className' => $className), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getClassMetadata($className);
    }
    public function createQuery($dql = '')
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'createQuery', array('dql' => $dql), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->createQuery($dql);
    }
    public function createNamedQuery($name)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'createNamedQuery', array('name' => $name), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->createNamedQuery($name);
    }
    public function createNativeQuery($sql, \Doctrine\ORM\Query\ResultSetMapping $rsm)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'createNativeQuery', array('sql' => $sql, 'rsm' => $rsm), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->createNativeQuery($sql, $rsm);
    }
    public function createNamedNativeQuery($name)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'createNamedNativeQuery', array('name' => $name), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->createNamedNativeQuery($name);
    }
    public function createQueryBuilder()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'createQueryBuilder', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->createQueryBuilder();
    }
    public function flush($entity = null)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'flush', array('entity' => $entity), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->flush($entity);
    }
    public function find($className, $id, $lockMode = null, $lockVersion = null)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'find', array('className' => $className, 'id' => $id, 'lockMode' => $lockMode, 'lockVersion' => $lockVersion), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->find($className, $id, $lockMode, $lockVersion);
    }
    public function getReference($entityName, $id)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getReference', array('entityName' => $entityName, 'id' => $id), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getReference($entityName, $id);
    }
    public function getPartialReference($entityName, $identifier)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getPartialReference', array('entityName' => $entityName, 'identifier' => $identifier), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getPartialReference($entityName, $identifier);
    }
    public function clear($entityName = null)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'clear', array('entityName' => $entityName), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->clear($entityName);
    }
    public function close()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'close', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->close();
    }
    public function persist($entity)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'persist', array('entity' => $entity), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->persist($entity);
    }
    public function remove($entity)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'remove', array('entity' => $entity), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->remove($entity);
    }
    public function refresh($entity)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'refresh', array('entity' => $entity), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->refresh($entity);
    }
    public function detach($entity)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'detach', array('entity' => $entity), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->detach($entity);
    }
    public function merge($entity)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'merge', array('entity' => $entity), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->merge($entity);
    }
    public function copy($entity, $deep = false)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'copy', array('entity' => $entity, 'deep' => $deep), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->copy($entity, $deep);
    }
    public function lock($entity, $lockMode, $lockVersion = null)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'lock', array('entity' => $entity, 'lockMode' => $lockMode, 'lockVersion' => $lockVersion), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->lock($entity, $lockMode, $lockVersion);
    }
    public function getRepository($entityName)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getRepository', array('entityName' => $entityName), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getRepository($entityName);
    }
    public function contains($entity)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'contains', array('entity' => $entity), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->contains($entity);
    }
    public function getEventManager()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getEventManager', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getEventManager();
    }
    public function getConfiguration()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getConfiguration', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getConfiguration();
    }
    public function isOpen()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'isOpen', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->isOpen();
    }
    public function getUnitOfWork()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getUnitOfWork', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getUnitOfWork();
    }
    public function getHydrator($hydrationMode)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getHydrator', array('hydrationMode' => $hydrationMode), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getHydrator($hydrationMode);
    }
    public function newHydrator($hydrationMode)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'newHydrator', array('hydrationMode' => $hydrationMode), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->newHydrator($hydrationMode);
    }
    public function getProxyFactory()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getProxyFactory', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getProxyFactory();
    }
    public function initializeObject($obj)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'initializeObject', array('obj' => $obj), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->initializeObject($obj);
    }
    public function getFilters()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'getFilters', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->getFilters();
    }
    public function isFiltersStateClean()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'isFiltersStateClean', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->isFiltersStateClean();
    }
    public function hasFilters()
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, 'hasFilters', array(), $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        return $this->valueHoldera3713->hasFilters();
    }
    public static function staticProxyConstructor($initializer)
    {
        static $reflection;
        $reflection = $reflection ?? new \ReflectionClass(__CLASS__);
        $instance   = $reflection->newInstanceWithoutConstructor();
        \Closure::bind(function (\Doctrine\ORM\EntityManager $instance) {
            unset($instance->config, $instance->conn, $instance->metadataFactory, $instance->unitOfWork, $instance->eventManager, $instance->proxyFactory, $instance->repositoryFactory, $instance->expressionBuilder, $instance->closed, $instance->filterCollection, $instance->cache);
        }, $instance, 'Doctrine\\ORM\\EntityManager')->__invoke($instance);
        $instance->initializer80a1e = $initializer;
        return $instance;
    }
    protected function __construct(\Doctrine\DBAL\Connection $conn, \Doctrine\ORM\Configuration $config, \Doctrine\Common\EventManager $eventManager)
    {
        static $reflection;
        if (! $this->valueHoldera3713) {
            $reflection = $reflection ?? new \ReflectionClass('Doctrine\\ORM\\EntityManager');
            $this->valueHoldera3713 = $reflection->newInstanceWithoutConstructor();
        \Closure::bind(function (\Doctrine\ORM\EntityManager $instance) {
            unset($instance->config, $instance->conn, $instance->metadataFactory, $instance->unitOfWork, $instance->eventManager, $instance->proxyFactory, $instance->repositoryFactory, $instance->expressionBuilder, $instance->closed, $instance->filterCollection, $instance->cache);
        }, $this, 'Doctrine\\ORM\\EntityManager')->__invoke($this);
        }
        $this->valueHoldera3713->__construct($conn, $config, $eventManager);
    }
    public function & __get($name)
    {
        $this->initializer80a1e && ($this->initializer80a1e->__invoke($valueHoldera3713, $this, '__get', ['name' => $name], $this->initializer80a1e) || 1) && $this->valueHoldera3713 = $valueHoldera3713;
        if (isset(self::$publicProperties3e219[$name])) {
            return $this->valueHoldera3713->$name;
        }
        $realInstanceReflection = new \ReflectionClass('Doctrine\\ORM\\EntityManager');
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
        $realInstanceReflection = new \ReflectionClass('Doctrine\\ORM\\EntityManager');
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
        $realInstanceReflection = new \ReflectionClass('Doctrine\\ORM\\EntityManager');
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
        $realInstanceReflection = new \ReflectionClass('Doctrine\\ORM\\EntityManager');
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
        \Closure::bind(function (\Doctrine\ORM\EntityManager $instance) {
            unset($instance->config, $instance->conn, $instance->metadataFactory, $instance->unitOfWork, $instance->eventManager, $instance->proxyFactory, $instance->repositoryFactory, $instance->expressionBuilder, $instance->closed, $instance->filterCollection, $instance->cache);
        }, $this, 'Doctrine\\ORM\\EntityManager')->__invoke($this);
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
