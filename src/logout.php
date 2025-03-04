<?php
session_start(); 

// Unset all session variables
$_SESSION = array(); 

// Destroy the session
session_destroy();

// Expire cookies properly
setcookie("apikey", "", time() - 3600, "/", "", false, true);

// Debugging: Check if cookie is deleted
if (!isset($_COOKIE['apikey'])) {
    error_log("Cookie 'apikey' successfully deleted.");
} else {
    error_log("Failed to delete 'apikey' cookie.");
}

// Redirect to login page with correct path
header("Location: /fmc/src/require/login.html"); 
exit;
?>
