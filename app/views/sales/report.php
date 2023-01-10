<?php
  $this->load_view('include/header',$data);
  $this->load_view('include/navbar',$data);
?>
<div class="container">
  
  <h1> Sales Report </h1><br><br>

    <form id="filter_form">

      <div class="row">
        <div class="col-md-6">

          <div class="form-group">
            <div class="row">
              <div class="col-md-3">
                <label for="start_date">Start Date</label>
              </div>
              <div class="col-md-8">
                <input type="date" id="start_date" name="start_date" class="form-control" placeholder="Start Date">
              </div>
            </div>
          </div>

          <div class="form-group">
            <div class="row">
              <div class="col-md-3">
                <label for="end_date">End Date</label>
              </div>
              <div class="col-md-8">
                <input type="date" id="end_date" name="end_date" class="form-control" placeholder="End Date">
              </div>
            </div>
          </div>

          <div class="form-group">
            <div class="row">
              <div class="col-md-3">
                <label for="user_id">User ID</label>
              </div>
              <div class="col-md-8">
                <input type="number" name="user_id" id="user_id" class="form-control" placeholder="User ID">
              </div>
            </div>            
          </div>
          
          <input type="submit" name="filter" class="btn btn-success" value="filter">
        </div>
        
      </div>

    </form>
  <br><br><br>

  <div class="row">
      <div style="border: 1px solid black;padding:5px 0px;">
        <table id="datatable" class="display" style="width: 100%;">
            <thead>
                <tr>
                    <th>Ammount</th>
                    <th>Receipt ID</th>
                    <th>Items</th>
                    <th>Buyer Email</th>
                    <th>Buyer IP</th>
                    <th>Note</th>
                    <th>City</th>
                    <th>Phone</th>
                    <th>Entry By</th>
                    <th>Entry At</th>
                </tr>
            </thead>
        </table>
      </div>
  </div>
  
  

</div>

<script type="text/javascript">
$(document).ready(function() {

    var url = "<?= base_url('sales/report') ?>";
    load_data_table(url);


    $('#filter_form').on('submit',function(e){
      e.preventDefault();

      var start_date = $('#start_date').val();
      var end_date = $('#end_date').val();
      var user_id = $('#user_id').val();

      var date_flag = false;
      var url = "<?= base_url('sales/report') ?>";
      if(start_date!="" && end_date!="")
      {
        url = url + "?start="+start_date+"&end="+end_date;
        date_flag = true;
      }
      else if(start_date!="")
      {
        url = url + "?start="+start_date;
        date_flag = true;
      }
      else if(end_date!="")
      {
        url = url + "?end="+end_date;
        date_flag = true;
      }

      if(user_id!=null)
      {
        if(date_flag==true)
        {
         url = url + "&uid="+user_id;
        }
        else 
        {
          url = url + "?uid="+user_id;
        }
      }

      load_data_table(url);
    });

});


function load_data_table(url)
{
  $('#datatable').DataTable().destroy(); //this will destroy previous datatable

  $('#datatable').DataTable( {
      "ajax": url,
      "columns": [
          { "data": "ammount" },
          { "data": "receipt_id" },
          { "data": "items" },
          { "data": "buyer_email" },
          { "data": "buyer_ip" },
          { "data": "note" },
          { "data": "city" },
          { "data": "phone" },
          { "data": "entry_by" },
          { "data": "entry_at" },
      ]
  });
}
</script>

<?php
  $this->load_view('include/footer',$data);
?>
