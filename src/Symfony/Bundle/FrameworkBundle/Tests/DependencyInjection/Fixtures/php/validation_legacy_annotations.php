<?php

$container->loadFromExtension('framework', [
    'annotations' => [
        'enabled' => true,
    ],
    'http_method_override' => false,
    'secret' => 's3cr3t',
    'validation' => [
        'enabled' => true,
        'enable_annotations' => true,
    ],
]);

$container->setAlias('validator.alias', 'validator')->setPublic(true);
