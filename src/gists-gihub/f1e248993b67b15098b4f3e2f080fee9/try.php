<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
            try {
                echo '2<br>';
                throw new Exception('Criei um erro');
                echo '5';
            } catch (Exception $ex) {
                echo 'Errou<br>';
                echo $ex->getMessage() . '<br>';
                echo $ex->getFile() . '<br>';
                echo $ex->getLine() . '<br>';
                echo $ex->getCode() . '<br>';
                
            }
            echo '4';
        ?>
    </body>
</html>
