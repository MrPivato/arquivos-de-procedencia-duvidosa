$(document).ready(function()
{
        setInterval(function() {bounce()}, 0);

        var floor = $(document).height() - $('#bola').height();
        var speed = floor / 2.5;

        function bounce() 
        {
                $('#bola').animate({top: 0}, speed);     // vai ate o topo
                $('#bola').animate({top: floor}, speed); // volta para o chao
        }
})
