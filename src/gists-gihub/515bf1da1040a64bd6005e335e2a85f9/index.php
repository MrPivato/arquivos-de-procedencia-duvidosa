<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf8">
        <title>Contato</title>
    </head>
    <body>
        <form action="mail_send.php" 
              method="post">
            <label for="email">E-mail: </label>
            <input required name="email" 
                   type="email">
            <label for="mensagem">Mensagem: 
            </label>
            <textarea required 
                      name="mensagem"></textarea>
            <input type="submit" value="Enviar"/>
            <form>
    </body>
</html>