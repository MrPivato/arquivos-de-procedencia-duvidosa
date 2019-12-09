$(document).ready(function () {
  handleTextarea(true);

  placePostItsBD();

  $('#add').click(function () {
    var tarefa = $('textarea').val();

    if (tarefa.length === 0 || !tarefa.trim()) {
      handleTextarea(false);
    } else {
      handleTextarea(true);

      var post_it = createPostIt(tarefa);

      $("#fazer").append(post_it);

      $('.moveFazendo').click(function () {

        $(this).parent()
          .removeClass("todo")
          .addClass("doing");

        $(this).removeClass("moveFazendo").addClass("moveFeito");

        $('#fazendo').append(document.getElementById($(this).parent().attr('id')));

        $('.moveFeito').click(function () {
          $(this).hide();

          $(this).parent()
            .removeClass("doing")
            .addClass("done");

          $('#feito').append(document.getElementById($(this).parent().attr('id')));
        })
      })
    }
  })
})

function createPostIt(tarefa) {
  var idPostIt = idGenerator();
  var idSelect = idGenerator();

  var card = $("<div></div>")
    .attr('id', idPostIt)
    .addClass("todo")
    .append($("<p></p>")
      .text(tarefa))
    .append($("<select><option selected disabled></option></select>")
      .attr('id', idSelect)
      .text(getUsernamesBD(idSelect)))
    .append($("<button></button>")
      .addClass('moveFazendo fas fa-chevron-right fa-2x'));
  return card;
}

function idGenerator() {
  var stg = function () {
    return (((1 + Math.random()) * 0x10000) | 0).toString(16).substring(1);
  };
  return (stg() + stg() + "-" + stg() + "-" + stg() + "-" + stg() + "-" + stg() + stg() + stg());
}

function handleTextarea(status) {
  if (status) {
    $('#error').hide();
  } else {
    $('#error').show();
  }
  $('textarea').val("");
  $('textarea').focus();
}

function getUsernamesBD(idSelect) {
  $.getJSON('/users', function (data) {
    $.each(data, function (i, item) {
      $('#' + idSelect).append($('<option>', {
        value: item.username,
        text: item.username
      }));
    });
  });
}

function placePostItsBD() {
  $.getJSON('/post_its', function (data) {
    $.each(data, function (i, item) {
      var idSelect = item.id + "select";
      if (parseInt(item.progress) == 0) {
        var card = createPostItTodoBD(item, idSelect);
        $('#fazer').append(card);
      } else if (parseInt(item.progress) == 1) {
        var card = createPostItDoingBD(item, idSelect);
        $('#fazendo').append(card);
      } else {
        var card = createPostItDoneBD(item, idSelect);
        $('#feito').append(card);
      }
    });
  });
}

function createPostItTodoBD(item, idSelect) {
  var post_it = $("<div></div>")
    .attr('id', item.id)
    .addClass("todo")
    .append($("<p></p>")
      .text(item.content))
    .append($("<select><option selected disabled></option></select>")
      .attr('id', idSelect)
      .text(getUsernamesBD(idSelect)))
    .append($("<button></button>")
      .addClass('moveFazendo fas fa-chevron-right fa-2x'));
  return post_it;
}

function createPostItDoingBD(item, idSelect) {
  var post_it = $("<div></div>")
    .attr('id', item.id)
    .addClass("doing")
    .append($("<p></p>")
      .text(item.content))
    .append($("<select><option selected disabled></option></select>")
      .attr('id', idSelect)
      .text(getUsernamesBD(idSelect)))
    .append($("<button></button>")
      .addClass('moveFeito fas fa-chevron-right fa-2x'));
  return post_it;
}

function createPostItDoneBD(item, idSelect) {
  var post_it = $("<div></div>")
    .attr('id', item.id)
    .addClass("done")
    .append($("<p></p>")
      .text(item.content))
    .append($("<select><option selected disabled></option></select>")
      .attr('id', idSelect)
      .text(getUsernamesBD(idSelect)));
  return post_it;
}