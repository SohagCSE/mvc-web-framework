function is_alphanumeric(value)
{
  if(value.match(/^[a-zA-Z0-9]+$/))
    return true;
  else
    return false;
}
function is_alphanumeric_space(value)
{
  if(value.match(/^[a-zA-Z0-9 ]+$/))
    return true;
  else
    false;
}
function is_alphanumeric_space_comma(value)
{
  if(value.match(/^[a-zA-Z0-9, ]+$/))
    return true;
  else
    false;
}
function is_email(value) 
{
  if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(value))
  {
    return true;
  }
  return false;
}
  

function validate()
{
  var ammount   = document.getElementById('ammount').value;
  var buyer     = document.getElementById('buyer').value;
  var receipt_id = document.getElementById('receipt_id').value;
  var items     = document.getElementById('items').value;
  var buyer_email = document.getElementById('buyer_email').value;
  var note      = document.getElementById('note').value;
  var city      = document.getElementById('city').value;
  var phone     = document.getElementById('phone').value;
  var entry_by  = document.getElementById('entry_by').value;


  var ammount_error   = document.getElementById('ammount_error');
  var buyer_error     = document.getElementById('buyer_error');
  var receipt_id_error = document.getElementById('receipt_id_error');
  var items_error     = document.getElementById('items_error');
  var buyer_email_error = document.getElementById('buyer_email_error');
  var note_error      = document.getElementById('note_error');
  var city_error      = document.getElementById('city_error');
  var phone_error     = document.getElementById('phone_error');
  var entry_by_error  = document.getElementById('entry_by_error');

  var validate_flag = true;
  if(isNaN(ammount) || ammount=="")
  {
    ammount_error.innerText = 'Ammount should be a number';
    ammount_error.style.display = 'block';
    validate_flag = false;
  }
  else
  {
    ammount_error.style.display = 'none';
  }
  if(!is_alphanumeric_space(buyer))
  {
    buyer_error.innerText = 'Buyer name not valid';
    buyer_error.style.display = 'block';
    validate_flag = false;
  }
  else
  {
    buyer_error.style.display = 'none';
  }
  if(!is_alphanumeric_space(buyer))
  {
    buyer_error.innerText = 'Buyer name not valid';
    buyer_error.style.display = 'block';
    validate_flag = false;
  }
  else
  {
    buyer_error.style.display = 'none';
  }
  if(!is_alphanumeric(receipt_id))
  {
    receipt_id_error.innerText = 'Receipt id is not valid';
    receipt_id_error.style.display = 'block';
    validate_flag = false;
  }
  else
  {
    receipt_id_error.style.display = 'none';
  }
  if(!is_alphanumeric_space_comma(items))
  {
    items_error.innerText = 'items are not valid';
    items_error.style.display = 'block';
    validate_flag = false;
  }
  else
  {
    items_error.style.display = 'none';
  }
  if(!is_email(buyer_email))
  {
    buyer_email_error.innerText = 'not a valid email';
    buyer_email_error.style.display = 'block';
    validate_flag = false;
  }
  else
  {
    buyer_email_error.style.display = 'none';
  }
  if(note.length=="")
  {
    note_error.innerText = 'note can\'t be empty';
    note_error.style.display = 'block';
    validate_flag = false;
  }
  else if(note.length > 30)
  {
    note_error.innerText = 'note can\'t be more than 30 character';
    note_error.style.display = 'block';
    validate_flag = false;
  }
  else
  {
    note_error.style.display = 'none';
  }
  if(!is_alphanumeric_space_comma(city))
  {
    city_error.innerText = 'not a valid city';
    city_error.style.display = 'block';
    validate_flag = false;
  }
  else
  {
    city_error.style.display = 'none';
  }
  if(isNaN(phone) || phone=="")
  {
    phone_error.innerText = 'invalid phone number';
    phone_error.style.display = 'block';
    validate_flag = false;
  }
  else
  {
    phone_error.style.display = 'none';
  }
  if(isNaN(entry_by) || entry_by=="")
  {
    entry_by_error.innerText = 'invalid entry by id';
    entry_by_error.style.display = 'block';
    validate_flag = false;
  }
  else
  {
    entry_by_error.style.display = 'none';
  }
  return validate_flag;
}