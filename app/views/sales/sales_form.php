<?php
  $this->load_view('include/header',$data);
  $this->load_view('include/navbar',$data);
?>

<div class="container">
    
    <h1>Create new Sale</h1>

    <form action="" id="sales_form" method="POST">


      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="ammount">Ammount</label>
            <input type="number" name="ammount" class="form-control" id="ammount" placeholder="Ammount">
            <div id="ammount_error" class="error_val" style="display: none;"></div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="buyer">Buyer</label>
            <input type="text" name="buyer" id="buyer" class="form-control" placeholder="Buyer">
            <div id="buyer_error" class="error_val" style="display: none;"></div>
          </div>
        </div>
      </div>
      

      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="receipt_id">Receipt ID</label>
            <input type="text" name="receipt_id" id="receipt_id" class="form-control" placeholder="Receipt ID">
            <div id="receipt_id_error" class="error_val" style="display: none;"></div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="items">Items</label>
            <input type="text" name="items" class="form-control" id="items" placeholder="Item list (comma seperated)">
            <div id="items_error" class="error_val" style="display: none;"></div>
          </div>
        </div>
      </div>


      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="buyer_email">Buyer Email</label>
            <input type="email" name="buyer_email" class="form-control" id="buyer_email" placeholder="Buyer Email">
            <div id="buyer_email_error" class="error_val" style="display: none;"></div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="note">Note</label>
            <input type="anything" name="note" class="form-control" id="note" placeholder="Note">
            <div id="note_error" class="error_val" style="display: none;"></div>
          </div>
        </div>
      </div>
      
      
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="city">City</label>
            <input type="text" name="city" class="form-control" id="city" placeholder="Enter email">
            <div id="city_error" class="error_val" style="display: none;"></div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="form-group">
            <label for="phone">Phone</label>
            <input type="number" name="phone" class="form-control" id="phone" placeholder="Phone Number">
            <div id="phone_error" class="error_val" style="display: none;"></div>
          </div>
        </div>
      </div>
      
      
      <div class="row">
        <div class="col-md-6">
          <div class="form-group">
            <label for="entry_by">ID of who entry</label>
            <input type="number" name="entry_by" class="form-control" id="entry_by" placeholder="Entrier ID">
            <div id="entry_by_error" class="error_val" style="display: none;"></div>
          </div>
        </div>
      </div>

      
      <button type="submit" id="sales_submit_btn" class="btn btn-primary">Submit</button>
    </form>


</div>

<script type="text/javascript">

  /*
  --- ajax thenewboston
  --- click and submit button with javascript and jquery

  --- needs of e.preventDefault() for jquery_ajax

  --- jquery_ajax request in details
      ... https://www.youtube.com/watch?v=hMxGhHNOkCU&list=PLoYCgNOIyGABdI2V8I_SWo22tFpgh2s6_
      ... some important videos for jquery_ajax
       https://www.youtube.com/watch?v=fEYx8dQr_cQ&list=RDQM2zN0zMmxU-o&start_radio=1
      ... each of type, url, data, beforeSend, success
  */
  
  $( "#sales_submit_btn" ).click(function(e) {
    e.preventDefault();

    if(validate()==false)
    {
      return true;
    }

    $.ajax({
      type:"POST",
      url:"<?= base_url('sales/sales_form_submit') ?>",
      data:$('#sales_form').serializeArray(),
      beforeSend:function(){
        $('#sales_submit_btn').attr('disabled',true);
      },
      success:function(r){
        if(r.response_status==='success')
        {
          window.location.href = '<?= base_url('sales') ?>';
        }
        else
        {
          $('#sales_submit_btn').attr('disabled',false);
          alert(r.response_status);
        }
      }
    });
  });
</script>

    

</div>
<?php
$this->load_view('include/footer');
?>
