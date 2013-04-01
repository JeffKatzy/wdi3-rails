$(function(){
  $('#submit').click(add_number);
  $('#square').click(square);
  $('fn').click(generic_function);
  $('#start').click(start_timer);
  $('#stop').click(stop_timer);
});

var numbers = [];
var timer = null;

function start_timer()
{
  timer = setInterval(generate_random_number, 500);
}

function stop_timer()
{
  clearInterval(timer);
}

function generate_random_number()
{
  var number = _.random(0, 1000)
  numbers.push(number);
  var box = $('<div>');
  box.addClass('box')
  box.text(number);
  $('#boxes').prepend(box);
}

function add_number(){
  var number = parseInt($('#number').val());
  var box = $('<div>');
  box.addClass('box')
  box.text(number);
  $('number').val('');
  $('number').focus();

  $('#boxes').prepend(box);
  numbers.push(number)
}

function generic_function(){
  empty_boxes();
  numbers = _.map(numbers, funky_calc);
  show_numbers
}


function funky_calc(i)
{
  var equation = $('#number').val();
  return eval(equation)
}

function square(){
  numbers = _.map(numbers, square_value);
  empty_boxes();
  show_numbers();
}

function square_value(i)
{
  return i * i;
}

function show_numbers()
{
  _.each(numbers, create_number_box)
}

function create_number_box(i)
{
  var box = $('<div>');
  box.addClass('box')
  box.text(i);
  $('#boxes').prepend(box);
}


function empty_boxes(){
  var clear = $('#boxes').children('.clear')
  $('boxes').empty();
  $('#boxes').append(clear)
}