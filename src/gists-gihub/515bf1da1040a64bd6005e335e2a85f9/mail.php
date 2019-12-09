<?php
  
  $de = "meuemailmuitolocoaque@mail.bender";
  $para = "bender@bender.bender";
  $mensagem .= "Não compila né";
  mail($para, "uau", $mensagem, "From: $de");

  mail("alguem@dominio.com", "Teste", $mensagem, "From: 
  webmaster@dominio.com\nReply-To: info@dominio.com");

  mail("alguem@dominio.com", "Teste", $mensagem,
  "From: webmaster@dominio.com","-r webmaster@dominio.com");
  
  $para = "joao@dominio.com.br";
  $mensagem = "<font color=\"#0000FF\">Teste</font>";
  mail($para, "Teste", $mensagem, "Content-Type: text/html");
  
?>
