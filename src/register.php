<?php
//  config file path
$configPath = __DIR__ . '/../fmc.conf'; //  

if (file_exists($configPath)) {
    $conf = json_decode(file_get_contents($configPath), true);
    if (!$conf) {
        die('Error: Invalid JSON format in fmc.conf');
    }
} else {
    die('No config file found at ' . $configPath);
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"
                integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
                crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                $('#submit').on('click', function () {
                    submitForm();
                });

                $('input').keyup(function (event) {
                    if (event.keyCode === 13) {
                        submitForm();
                    }
                });

                function submitForm() {
                    if ($('#pwd').val() === '' || $('#name').val() === '' || $('#email').val() === '') {
                        alert('Some fields are empty');
                    } else if ($('#pwd').val() !== $('#pwdc').val()) {
                        alert('Passwords do not match');
                    } else {
                        $('#form').submit();
                    }
                }

                let sizeElement = $('#size');
                let sizeValue = parseInt(sizeElement.text());
                sizeElement.text(getSizeStr(sizeValue));

                function getSizeStr(size) {
                    let sizes = ['Bytes', 'KB', 'MB', 'GB'];
                    if (size === 0) return '0 Bytes';
                    let i = Math.floor(Math.log(size) / Math.log(1024));
                    return (size / Math.pow(1024, i)).toFixed(1) + ' ' + sizes[i];
                }
            });
        </script>
        <link rel="stylesheet" href="style.css"/>
        <title>New Account</title>
    </head>
    <body>
        <div class="wrapper">
            <div class="sometxt">
                Hi<br><br>
                You can upload up to <span id="size"><?php echo isset($conf['newAccountMaxSize']) ? htmlspecialchars($conf['newAccountMaxSize']) : 'Unknown'; ?></span>. 
                After that, your old files get deleted as you upload new ones.
            </div>
            <form id="form" action="post/newacc.php" method="post">
                <div class="formContainer paddingtop">
                    <div class="inForm">Name</div>
                    <div class="inForm bigger"><input class="blackInput" type="text" id="name" name="name"></div>
                    
                    <div class="inForm">Email</div>
                    <div class="inForm bigger"><input class="blackInput" type="email" id="email" name="email"></div>
                    
                    <div class="inForm">Password</div>
                    <div class="inForm bigger"><input class="blackInput" type="password" id="pwd" name="pwd"></div>
                    
                    <div class="inForm">Confirm</div>
                    <div class="inForm bigger"><input class="blackInput" type="password" id="pwdc"></div>
                    
                    <div class="inForm"><div id="submit" class="button">Submit</div></div>
                </div>
            </form>
        </div>
    </body>
</html>
