<?php
$items = range(1, 1000);
echo "<html><body><ul>";
foreach ($items as $item) {
    echo "<li>Item $item</li>";
}
echo "</ul></body></html>";
