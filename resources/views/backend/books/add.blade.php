@extends('admin.admin_master')
@section('admin')
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<div class="page-content">
<div class="container-fluid">

<div class="row">
<div class="col-12">
    <div class="card">
        <div class="card-body">


            <div id="uploadimageModal" class="modal" role="dialog">
                <div class="modal-dialog cropimg">
                <div class="modal-content">
                <div class="modal-body">
                    <a href="Javascript:void" class="btn-cropclose" onclick="modalclose();"><img src="https://icones.pro/wp-content/uploads/2022/05/icone-fermer-et-x-rouge.png" width="25px"></a>
                
                <div class="row">
                <div class="col-md-12 text-center">
                <div id="image_demo" style="width:100%;"></div>
                
                </div>
                <input type="hidden" id="idval">
                
                   <div class="col-md-12 text-center mb-1">
                   <button type="button" class="btn btn-success crop_image">Upload</button>
                   </div>
                
                </div>
                </div>
                
                
                </div>
                </div>
                </div>

            <h4 class="card-title">Add Book </h4><br><br>
            
  

            <form method="post" action="{{ route('books.store') }}" id="myForm" >
                @csrf

                <div class="row mb-3">
                    <label for="example-text-input" class="col-sm-2 col-form-label"> Category </label>
                    <div class="form-group col-sm-5">
                        <select class="form-select" aria-label="Default select example" name="category">
                            <option selected>Open this select menu</option>
                            @foreach($categories as $category)
                            <option value="{{$category->id}}">{{$category->name}}</option>
                            @endforeach
                            
                          </select>
                    </div>
                </div>
                <!-- end row -->



                <div class="row mb-3">
                    <label for="example-text-input" class="col-sm-2 col-form-label"> Binding Type </label>
                    <div class="form-group col-sm-5">
                        <select class="form-select" aria-label="Default select example" name="binding_type">
                            <option selected>Open this select menu</option>
                            @foreach($bindings as $binding)
                            <option value="{{$binding->id}}">{{$binding->name}}</option>
                            @endforeach
                            
                          </select>
                    </div>
                </div>
                <!-- end row -->



                <div class="row mb-3">
                    <label for="example-text-input" class="col-sm-2 col-form-label"> Book Conditions </label>
                    <div class="form-group col-sm-5">
                        <select class="form-select" aria-label="Default select example" name="condition">
                            <option selected>Open this select menu</option>
                            @foreach($condition_types as $condition_types)
                            <option value="{{$condition_types->id}}">{{$condition_types->name}}</option>
                            @endforeach
                            
                          </select>
                    </div>
                </div>
                <!-- end row -->
                <div class="row mb-3">
                    <label for="example-text-input" class="col-sm-2 col-form-label"> Binding </label>
                    <div class="form-group col-sm-5">
                        <input name="binding" class="form-control" type="text"    >
                    </div>
                </div>
                <!-- end row -->
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"> Title </label>
                <div class="form-group col-sm-5">
                    <input name="name" class="form-control" type="text"    >
                </div>
            </div>
            <!-- end row -->

            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"> Title Long </label>
                <div class="form-group col-sm-5">
                    <input name="title_long" class="form-control" type="text"    >
                </div>
            </div>
            <!-- end row -->


            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"> ISBN </label>
                <div class="form-group col-sm-5">
                    <input name="isbn" class="form-control" type="text"    >
                </div>
            </div>
            <!-- end row -->

            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"> ISBN13 </label>
                <div class="form-group col-sm-5">
                    <input name="isbn13" class="form-control" type="text"    >
                </div>
            </div>
            <!-- end row -->


            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"> Deway Decimal </label>
                <div class="form-group col-sm-5">
                    <input name="dewey_decimal" class="form-control" type="text"    >
                </div>
            </div>
            <!-- end row -->


         

            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"> Publisher </label>
                <div class="form-group col-sm-5">
                    <input name="publisher" class="form-control" type="text"    >
                </div>
            </div>
            <!-- end row -->


            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"> Language </label>
                <div class="form-group col-sm-5">
                    <input name="language" class="form-control" type="text"    >
                </div>
            </div>
            <!-- end row -->

            
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"> Date Published  </label>
                <div class="form-group col-sm-5">
                    <input name="date_published" class="form-control" type="date"    >
                </div>
            </div>
            <!-- end row -->


            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">  Edition  </label>
                <div class="form-group col-sm-5">
                    <input name="edition" class="form-control" type="text"    >
                </div>
            </div>
            <!-- end row -->


            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">  Pages  </label>
                <div class="form-group col-sm-5">
                    <input name="pages" class="form-control" type="text"    >
                </div>
            </div>
            <!-- end row -->


            
            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">  Dimensions  </label>
                <div class="form-group col-sm-5">
                    <input name="pages" class="form-control" type="integer"    >
                </div>
            </div>
            <!-- end row -->

            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">  Dimensions  </label>
                <div class="form-group col-sm-5">
                    <input name="pages" class="form-control" type="integer"    >
                </div>
            </div>
            <!-- end row -->


            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Overview	  </label>
                <div class="form-group col-sm-5">
                    <input name="overview" class="form-control" type="text"    >
                </div>
            </div>
            <!-- end row -->



            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"> Image</label>
                <div class="form-group col-sm-5">
                    <input class="form-control" type="file" id="file"  onchange="preview(2)" required>
                    <input type="hidden" name="filetext"  class="form-control" id="profile_images" placeholder="profile_images" >
                    <div id="output2">
                    </div>
                        <div id="uploaded_image"></div>
                </div>
            </div>
            <!-- end row -->



            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Overview	  </label>
                <div class="form-group col-sm-5">
                    <input name="msrp" class="form-control" type="number"    >
                </div>
            </div>
            <!-- end row -->


            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Excerpt	  </label>
                <div class="form-group col-sm-5">
                    <input name="excerpt" class="form-control" type="number"    >
                </div>
            </div>
            <!-- end row -->


            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label">Synopsis	  </label>
                <div class="form-group col-sm-5">
                    <input name="synopsis" class="form-control" type="text"    >
                </div>
            </div>
            <!-- end row -->



           


            <div class="row mb-3">
                <label for="example-text-input" class="col-sm-2 col-form-label"> Status </label>
                <div class="form-group col-sm-5">
                    <select class="form-select" aria-label="Default select example" name="status">
                        <option selected value="1">Active</option>
                        <option value="0">InActive</option>
                      </select>
                </div>
            </div>
            <!-- end row -->
        
            <input type="submit" class="btn btn-info waves-effect waves-light" value="Add">
            </form>
             
           
           
        </div>
    </div>
</div> <!-- end col -->
</div>
 


</div>
</div>

<script type="text/javascript">
    $(document).ready(function (){
        $('#myForm').validate({
            rules: {
                name: {
                    required : true,
                }, 
                 status: {
                    required : true,
                },
            },
            messages :{
                name: {
                    required : 'Please Enter Your Name',
                },
                status: {
                    required : 'Please Select Status',
                },
                
            },
            errorElement : 'span', 
            errorPlacement: function (error,element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            highlight : function(element, errorClass, validClass){
                $(element).addClass('is-invalid');
            },
            unhighlight : function(element, errorClass, validClass){
                $(element).removeClass('is-invalid');
            },
        });
    });
    
</script>



<script>  
    $(document).ready(function(){
    
        $image_crop = $('#image_demo').croppie({
        enableExif: true,
        viewport: {
        width:320,
          height:400,
          type:'square' //circle
        },
        boundary:{
          width:430,
          height:533
        }
      });
    
      // $('#upload_image').on('change', function(){
       
      // });
    
    
      $('.crop_image').click(function(event){
        $image_crop.croppie('result', {
          type: 'canvas',
          size: 'viewport'
        }).then(function(response){
    
        var ID =$("#idval").val();
    
        $.ajax({
                            type: "POST",
                            dataType: "json",
                            url: "{{ route('crop-image-upload-ajax_gallery') }}",
                            data: {'_token': $('meta[name="_token"]').attr('content'), 'image': response },
                            success: function(data){
                                $('#uploadimageModal').modal('hide');
                                $('#uploaded_image').html('<img src="'+data.image_url+'" class="img-thumbnail" width="80px"/>');
                                $('#profile_images').val(data.image_name);
                            }
        });
        
    
    
    
        
         
        })
      });
    
    });  
    
    
    function preview(id)
    {
    var dc = document.getElementById("file").files;
    $("#idval").val(id);
    var reader = new FileReader();
    reader.onload = function (event) {
    $image_crop.croppie('bind', {
    url: event.target.result
    }).then(function(){
    console.log('jQuery bind complete');
    });
    }
    reader.readAsDataURL(dc[0]);
    $('#uploadimageModal').modal('show');
    }
    function modalclose(){
        $('#uploadimageModal').modal('hide');
    
    }
    function imagedelete(id,value) {
    
    if(confirm('Are you sure want to delete this image?')) {
    $.ajax({
    url: "ajax-image-delete.php", 
    type: "POST",
    data: "product_id="+id+"&imagetype="+value,
    success: function(result){
    
    $("#output"+value).html(result);
    }}); 
    }
    }
</script>





 
@endsection 
