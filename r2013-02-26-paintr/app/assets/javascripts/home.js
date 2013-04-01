$(function(){
  $('#submit').click(color_func);
  $('#colors').on('click', '.box', set_color);
  $('#clear').on('click', clear_boxes);
  $('#canvas').on('mouseover', '.paint', paint_color);
  $('#imagebtn').click(image_func);
  $('#images').on('click', '.box', set_image)
  $('#clearimg').click(clear_img)
  create_paint_boxes();
});

function paint_color()
{
  var color = $('#selected').css('background-color');
  var box = $(this);
  box.css('background-color', color)
}

function create_paint_boxes()
{
  for(var i = 0; i < 5000; i ++ )
  {
    var paint = $('<div>');
    paint.addClass('paint');
    $('#canvas').append(paint);
  }
}

function set_color(){
  var box = $(this);
  var color = box.css('background-color')
  $('#selected').css('background-color', color);
}

function set_image(){
  console.log('heyo')
  var box = $(this);
  var image = box.attr('src')
  $('#canvas').css('background', "url('" + image + "')");
}

// function wrong_func()
// {
//   var image = $('#image').val();
//   var image_box = $('<canvas>');
//   image_box.css('background', 'url()')
// }

function image_func()
{
  var image_url = $('#image').val();
  var box = $('<img>');
  box.addClass('box');
  box.attr('src', image_url)
  $('#images').append(box);
}

function clear_img()
{
  $('#canvas').css('background', "url('')");
}

function color_func()
{
  var color = $('#color').val();
  var box = $('<div>');
  box.addClass('box');
  box.css('background-color', color);

  $('#colors').append(box);
}

function clear_boxes()
{
  $('#colors').empty();
  $('#selected').css('background-color', 'white');
}


