<?php 
$configPath = __DIR__ . '/../../fmc.conf'; // Adjusted path

if (file_exists($configPath)) {
    $conf = json_decode(file_get_contents($configPath), true);
} else {
    die('No config file found at ' . $configPath);
}

$u = $conf['usr'];
$p = $conf['pwd'];

try {
    $db = new PDO('mysql:host=localhost;dbname=fmc', $u, $p);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die($e->getMessage());
}
?>
