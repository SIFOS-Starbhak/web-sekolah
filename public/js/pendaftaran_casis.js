
        $('#btn_tambah_wali').on("click", function(e){
            e.preventDefault();
                
               $('#note_for_btn_wali').text("*Tutup Kembali Jika tidak ada Wali / Kosongkan")
                
                if ($(this).hasClass('collapsed')) {
                    $(this).text('Tutup Data Wali');
                    $(this).removeClass("btn btn-primary").addClass("btn btn-warning");
                    $('#note_for_btn_wali').removeClass("d-none");
    
    
                    $("#nama_wali,#nik_wali,#tahun_lahir_wali").val("");
                    $("#pendidikan_wali,#pekerjaan_wali,#penghasilan_wali").val("");
                }else{
                    $(this).text('Tambah Data Wali')
                    $(this).removeClass("btn btn-warning").addClass("btn btn-primary")
    
                }
                
                if($(this).hasClass('collapsed') == false){
                    $('#note_for_btn_wali').addClass('d-none');
                }
    
    
                
            });
            $('#jalur').on("click", function(e){
            e.preventDefault();
                
                
                $('#note_for_prestasi').text("*Pilih Umum Jika tidak ada Prestasi / Kosongkan")
    
                if ($(this).val() == "Prestasi" || $(this).val() == "" ) {
                   
                    $("#prestasi").removeClass("d-none");
                    $('#note_for_prestasi').removeClass('d-none');

                  
    
                }else{
                   $("#prestasi").addClass("d-none");
                    $("#jenis_prestasi,#tingkat_prestasi,#nama_prestasi,#tahun_prestasi,#penyelenggara_prestasi,#peringkat_prestasi").val("");
                    $('#note_for_prestasi').addClass('d-none');
    
                    // $(this).removeClass("btn btn-warning").addClass("btn btn-primary")
    
                }
              
    
    
                
            });
            $(window).load(function() {
                var phones = [{
                    "mask": "## ###-###-###"
                }, {
                    "mask": "## ###-###-###"
                }];
                $('#no_telpon_hp').inputmask({
                    mask: phones,
                    greedy: false,
                    definitions: {
                        '#': {
                            validator: "[0-9]",
                            cardinality: 1
                        }
                    }
                });
            });
    
            $("#kip").change(function() {
                if ($(this).val() == "" || $(this).val() == 'Tidak') {
                    $("#no_kip").attr("disabled", "disabled").val('');
                    $("#nama_kip").attr("disabled", "disabled").val('');
                } else {
                    $("#no_kip").removeAttr("disabled");
                    $("#nama_kip").removeAttr("disabled");
                }
            }).trigger("change");



            /// for data pembayaran casis
// $(document).ready(function () {
//     $(document).on('click', '#validasiButton', function(event) {
//         event.preventDefault();
//         let href = $(this).attr("data-attr");
//         console.log(href)

//         $.ajax({
//             url: href,
//             beforeSend: function() {
//                 $('#loader').show();
//             },
//             // return the result
//             success: function(result) {
//                 // console.log($)
//                 $('#validasiModal').modal({show:true});
//                 $('#validasiBody').html(result).show();
//             },
//             complete: function() {
//                 $('#loader').hide();
//             },
//             error: function(jqXHR, testStatus, error) {
//                 console.log(error);
//                 alert("Page " + href + " cannot open. Error:" + error);
//                 $('#loader').hide();
//             },
//             timeout: 8000
//         })
//     });
//  });

    // $("#validasiButton").on('click',function (e) {
    //     // console.log(e)
    //     // $('#pic').attr('src',$(this).attr("data-pic"));
    //     let url = $(this).attr("data-attr");
    //     console.log(url)
        // $.get(url, function (data) {
        //     $('#validasiBody').html(data);
        // // For debugging purposes you can add : console.log(data); to see the output of your request
        // });
    //         $.get(url, function( data ) {
    //         $( "#validasiBody" ).html( data );
    //         alert( "Load was performed." );
    //         });
    // });

 // display a modal (medium modal)
 $(document).on('click', '#largeButton', function(event) {
    event.preventDefault();
    let href = $(this).attr('data-attr');
    // console.log(href)
    $.ajax({
        url: href,
        beforeSend: function() {
            $('#loader').show();
        },
        // return the result
        success: function(result) {
            // console.log(result)
            $('#largeBody').html(result).show();
        },
        complete: function() {
            $('#loader').hide();
        },
        error: function(jqXHR, testStatus, error) {
            console.log(error);
            alert("Page " + href + " cannot open. Error:" + error);
            $('#loader').hide();
        },
        timeout: 8000
    })
});