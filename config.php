<?php

require_once realpath(__DIR__ . '/vendor/autoload.php');

/**
 * Load dotenv.
 * Credits: https://github.com/devcoder-xyz/php-dotenv
 */
use DevCoder\DotEnv;
$absolutePathToEnvFile = __DIR__ . '/.env';
(new DotEnv($absolutePathToEnvFile))->load();


require_once 'server/connection.php';
