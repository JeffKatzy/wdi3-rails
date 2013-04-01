var checking_bal = 5000;
var savings_bal = 5000;
var savform_input = parseFloat($('#savform').val());

$(function(){
    $('#ckbalance').text('$' + checking_bal);
    $('#svbalance').text('$' + savings_bal);
    $('#dpcheckbtn').click(deposit_checking);
    $('#wdcheckbtn').click(withdraw_checking);
    $('#dpsavbtn').click(deposit_saving);
    $('#wdsavbtn').click(withdraw_saving(savform_input);
//   $('#btn').click(cool_popup);
//   $('#btncolor').click(change_color)
//   $('#btnhide').click(hide_text);
//   $('#btnshow').click(show_text)
//   $('#btncalculate').click(calc_area)

 });

// function cool_popup()
// {
//   var name = $('#name').val();
//   alert(name + ' you have won 1 billion dollars!!!');
// }

// function change_color()
//   {
//     var color = $('#color').val();
//     $('body').css('background-color', color);
//   }

// function hide_text()
//   {
//     $('h1').hide();
//   }

// function show_text()
//   {
//     $('h1').show();
//   }

// function calc_area()
// {
//   var width = parseFloat($('#width').val());
//   var height = parseFloat($('#height').val());
//   var a = area(width, height);
//   $('#area').text(a + 'sqft');
//   if(a < 100)
//   {
//     $('#area').addClass('success');
//   }
//   else
//   {
//     $('#area').addClass('alert');
//     }
// }

// function area (width, height) {
//   return width*height;
// }



function deposit_checking(){
  var amount = parseFloat($('#checkform').val());
  checking_bal += amount;
  $('#ckbalance').text(checking_bal);
}

function withdraw_checking(){
  var amount = parseFloat($('#checkform').val());
  if((checking_bal + savings_bal) - amount < 0){
    full_overdraft
  }
  else if(checking_bal - amount)) < 0
      var remainder = amount - checking_bal
      checking_bal = 0
      savings_bal -= remainder
  else
  {
    checking_bal -= amount
  }
  $('#ckbalance').text(checking_bal);
}

function deposit_saving(){
  var amount = parseFloat($('#savform').val());
  savings_bal += amount;
  $('#svbalance').text(savings_bal);
}

function withdraw_saving(amount){
  savings_bal -= amount;
  $('#svbalance').text(savings_bal);
}

function full_overdraft(){
  $('#ckbalance').text("Full overdraft biatch");
}




