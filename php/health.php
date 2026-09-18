<?php
declare(strict_types=1);

header('Content-Type: text/plain; charset=utf-8');

echo "Application health endpoint\n";
echo "Status: OK\n";
echo "PHP: " . PHP_VERSION . "\n";
echo "Time: " . gmdate('c') . "\n";
