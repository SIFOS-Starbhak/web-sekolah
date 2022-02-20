

        $(document).ready(function() {


            var table = $('#tableArtikel').DataTable({
                responsive: true
            });
            $('#X_RPL').DataTable({
                responsive: true
            });
            $('#X_MM').DataTable({
                responsive: true
            });
            $('#X_BC').DataTable({
                responsive: true
            });
            $('#X_TKJ').DataTable({
                responsive: true
            });
            $('#X_TEI').DataTable({
                responsive: true
            });

            $('#XI_RPL').DataTable({
                responsive: true
            });
            $('#XI_MM').DataTable({
                responsive: true
            });
            $('#XI_BC').DataTable({
                responsive: true
            });
            $('#XI_TKJ').DataTable({
                responsive: true
            });
            $('#XI_TEI').DataTable({
                responsive: true
            });

            $('#XII_RPL').DataTable({
                responsive: true
            });
            $('#XII_MM').DataTable({
                responsive: true
            });
            $('#XII_BC').DataTable({
                responsive: true
            });
            $('#XII_TKJ').DataTable({
                responsive: true
            });
            $('#XII_TEI').DataTable({
                responsive: true
            });
            $('#referal_code').DataTable({
                responsive: true
            });

            $('#data_casis').DataTable({
                "columns": [
                    { "width": "5%" },
                    { "width": "25%" },
                    { "width": "10%" },
                    { "width": "30%" },
                    { "width": "10%" },
                  ],
                
                responsive: true
            });

            $('.gugus').DataTable({
                "paging":   false,
                "ordering": false,
                "info":     false,
                
            });

         
        
       
          
            
           
        });
        $('.deleteConfirm').on('click', function(e) {
            e.preventDefault();
            let id = $(this).data('id');
            console.log(id);
            Swal.fire({
                title: 'Apakah anda yakin ingin menghapus?',
                text: "Artikel yang Anda hapus tidak dapat dipulihkan.",
                icon: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#fb160a ',
                cancelButtonColor: '##cdd3d8',
                confirmButtonText: 'Hapus',
                cancelButtonText: 'Batal',
            }).then((result) => {
                if (result.isConfirmed) {
                    $('#deleteForm' + id).submit();
                }
            })
        });
        ClassicEditor
            .create(document.querySelector('#task-textarea'))
            .catch(error => {
                console.error(error);
            });




            var check = $('input:checkbox[name=ids]:checked')
            if (check.length == 0 ) {
                $(".update-all-check").addClass('disabled');
                
            }



            $(".checkBoxClass").click(function () {
                if ($(this).is(":checked")) {
                    $(".update-all-check").removeClass('disabled');
                } else {
                    $(".update-all-check").addClass('disabled');
                }
            });


$('.update-all-check').on('click', function(e) {
    e.preventDefault();
    // console.log()
    var id =$(this).data("id");
    var allIdS = [];
    $('input:checkbox[name=ids]:checked').each(function(){
        
        allIdS.push($(this).val());
    });
    // console.log(allIdS,id);         

    $.ajaxSetup({
        headers: {
          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
      });
    $.ajax({
        url: "CalonSiswa/gugus/"+id, 
        type: "PUT",
        data: {
            "ids":allIdS
        },
        success: function (response) {
            alert(response.success)
            $.each(allIdS, function (key, val) { 
                $("#sid"+val).remove();
                 
            });
            $(".show_data_gugus").load("gugus/table");

      
           }
    });
    // console.log(allIdS,$(this).data("id"));         
});
