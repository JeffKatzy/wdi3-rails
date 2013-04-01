$(function(){


  $('#flickr').click(search_flickr);
  $('#clear').click(clear_photos)
  $('#dimensions').click(set_dimensions)
  $('#default').click(dimensions_default)
})

var images_array = [];
var page = 0;

function set_dimensions()
{
  var width = $('#width').val()
  var height = $('#height').val()
  $('.image').css('width', width + "px")
  $('.image').css('height', height + "px")
}

function dimensions_default()
{
  $('.image').removeAttr('width')
}

function search_flickr()
{
  console.log('yo')

  var search = $('#search').val();
  page++
  console.log(page)
$.getJSON('http://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=91cc93c8dc3d00570dd5d2058f38de72&text=' + search + '&per_page=3&page=' + page + '&format=json&jsoncallback=?', results);
}

function results(data)
{
  _.each(data.photos.photo, display_photo);
  add_on_image();
}

function display_photo(photo)
{
  var url =  "http://farm" + photo.farm +".static.flickr.com/"+ photo.server +"/"+ photo.id +"_"+ photo.secret +"_m.jpg";
  var image = $('<div>');
  image.addClass('image');
  image.css('background-image', "url('" + url + "')");
  images_array.push(image)
}

function add_on_image(){
  var number = parseInt($('#duration').val());
  setInterval(prepend_image, 500 * number);
}

function prepend_image(){
  var image = images_array.pop();
  $('#images').prepend(image);
  if(images_array == [])
    console.log('if statement')
    {search_flickr()}
}

function clear_photos(){
  $('#images').empty()
}
