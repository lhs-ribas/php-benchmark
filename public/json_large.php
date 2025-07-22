<?php
$data = [];
for ($i = 0; $i < 10000; $i++) {
    $data[] = ["id" => $i, "value" => str_repeat("x", 50)];
}
echo json_encode($data);
