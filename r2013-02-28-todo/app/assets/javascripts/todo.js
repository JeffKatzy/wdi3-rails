$(function(){
  get_colors();
  $('#new_priority').click(show_form)
  $('#cancel_priority').click(hide_form)
  $('#createprioritybtn').click(get_values)
  $('#priorities').on('click', '.priority', edit_priority)
})

// Global Variables
// **************************** //

  var priorities = [];

//********************************//

var colors = [];
var index;

function edit_priority(){
  console.log('hello from edit priority')
  $(this).css('background-color');
  name = $(this).next
  name = name.text;
  ('#name').val(name);
  var value = $(this).next().next().text();
  $('#value').val(value);
  var priority_id = $(this).next().next().next().text();
  $('edit_priority').show


  var color = priority.color
  var name = priority.name
  console.log(color)
  console.log(name)
}

function get_values(){
  var name = $('#name').val();
  var color = $('#color').val();
  var value = $('#value').val();
  var token = $('input[name=authenticity_token]').val();
  console.log(name);
  console.log(color);
  console.log(value);

  $.ajax({
    dataType: 'json',
    type: 'POST',
    url: '/priorities',
    data: {authenticity_token:token, color:color, name:name, value:value }
  }).done(display_priority);

  return false;
}

function display_priority(message){

  add_priority_to_array(message)
  var color = message.color
  var name = message.name
  var value = message.value
  var box = $('<li>');
  box.addClass('color');
  box.css('background-color', color);
  $('#priorities').prepend(box);
  $('#priorities').prepend('<span>');
  $('#priorities span').text(value);
  $('priorities').click(update_priority)
  $('#priorities').on('click', '.color', edit_priority);
  hide_form();
}

function add_priority_to_array(priority)
{
  priorities.push(priority);
  _.sortBy(priorities, function(p){ return p.value; });
}

function show_form()
{
  console.log('hello')
  $('#new_priority').hide();
  $('.form').show();
  $('#edit_priority').hide();
}

function show_new_form()
{
  $('#new_priority').hide();
  $('.form').show
  $('#create_priority').show();
  $('#edit_priority').hide();
  $('#name').val('')
  $('#value').val('')
}


function hide_form()
{
  $('#new_priority').show();
  $('.form').hide()
}

function get_colors()
{
  colors = $('.color');

  for(index = 0; index < colors.length; index ++){
    var box = $(colors[index]);
    var text = box.text();
    console.log(text);
    box.css('background-color', text);
    box.text('');
    }
  }

function create_priority(){
  var name = $('#name').val();
  var color = $('#color').val();
  var value = $('#value').val();
  var token = $('input[name=authenticity_token]').val();

  $.ajax({
    dataType: 'json',
    type: 'POST',
    url: '/priorities',
    data: {authenticity_token:token, color:color, name:name, value:value }
  }).done(display_priority);

  return false;
}

function edit_priority(){
  var name = $('#name').val();
  var color = $('#color').val();
  var value = $('#value').val();
  var token = $('input[name=authenticity_token]').val();

  $.ajax({
    dataType: 'json',
    type: 'POST',
    url: '/priorities/' + priority_id,
    data: {_method: put, authenticity_token:token, color:color, name:name, value:value }
  }).done(display_priority);

  return false;
}
}

