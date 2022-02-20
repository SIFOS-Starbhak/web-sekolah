
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
            // console.log('w')
                
                
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




    $(document).on('click', '#detail_pendaftar_referalButton', function(event) {
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
                $('#detail_pendaftar_referalBody').html(result).show();
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



$(document).on('click', '#imgButton', function(event) {
    event.preventDefault();
    let href = $(this).attr('data-attr');
    console.log(href)
    $.ajax({
        url: href,
        beforeSend: function() {
            $('#loader').show();
        },
        // return the result
        success: function(result) {
            // console.log(result)
            $('#imageBody').html(result).show();
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

// $(document).on('click', '#konfirmasi', function(event) {
//     event.preventDefault();
//     var status = $(this).data('data-attr'); 
//     var id = $(this).data('id'); 
//     console.log(status,id)
    
//     $.ajaxSetup({
//         headers: {
//       'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
//     }
//      });
//     $.ajax({
//         method: "POST",
//         dataType: "json",
//         url: "PembayaranCalonSiswa/konfirmasi/"+id, 
//         data: {'status': status, 'id': id},
//         success: function(data){
//           console.log(data.success)
//         },
//         error: function(data){
//             console.log(data.error,'error')
//         }
//     });
// });

$(document).on('click', '.konfirmasi', function(e) {
    e.preventDefault();
    var id = $(this).data("id");
    var status = $(this).data("attr");
    console.log(id,status)
    if ($(this).data("attr") == 0 || $(this).data("attr") == "0") {
        Swal.fire({
            title: 'Yakin Ingin Menolak Pembayaran?',
            showDenyButton: true,
            confirmButtonText: 'Yakin',
          }).then((result) => {
            /* Read more about isConfirmed, isDenied below */
            if (result.isConfirmed) {
                $.ajaxSetup({
                    headers: {
                      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                  });
                $.ajax({
                    url: "PembayaranCalonSiswa/konfirmasi/"+id, 
                    type: 'put',
                    dataType: "JSON",
                    data: {
                        "id": id,
                        "status": status,
                        "_method": 'put',
                    },
                    success: function(data) {
                        Swal.fire(
                            'Successfully',
                            data.success,
                            'success'
                          ).then(function() {
                            window.location = 'dashboard'
                        });
                    },
                    error: function(data){
                        console.log(data.error,'error')
                    }
                });
            }
          })
    }else{
        
        $.ajaxSetup({
            headers: {
              'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
          });
        $.ajax({
            url: "PembayaranCalonSiswa/konfirmasi/"+id, 
            type: 'put',
            dataType: "JSON",
            data: {
                "id": id,
                "status": status,
                "_method": 'put',
            },
            success: function(data) {
                Swal.fire(
                    'Successfully',
                    data.success,
                    'success'
                  ).then(function() {
                    window.location = 'dashboard'
                });


            },
            error: function(data){
                console.log(data.error,'error')
            }
        });
    }

});



$('#tambah_referal').click(function (e) {
    e.preventDefault();
    nama = $('#nama').val();
    email = $('#email_referal').val(); 
    no_hp = $('#no_hp').val();
    kelas = $('#kelas').val();

    if (!validasi_nama()  && !validasi_no_hp() && !validasi_email() && !validasi_kelas()) {
        $('#form-referal').submit();
    } else {
        validasi_nama()
        validasi_no_hp();
        validasi_email();
        validasi_kelas();
  
    };

    function validasi_nama() {
        // buat ngitung ada berapa yang kena validasi
        count_erorr = [];
        if (!nama) {
            $('#nama').addClass('is-invalid'); // Ad class is-invalid
            $('#nama').closest('div').find('.invalid-feedback').removeClass(
                'd-none'
            ); // cari div terdekat dan cari class nya find = cari lalu REMOVE class d-none
            count_erorr += 1
        } else {
            $('#nama').removeClass('is-invalid').removeClass('is-invalid');
            $('#nama').closest('div').find('.invalid-feedback').addClass(
                'd-none'
            ); // cari div terdekat dan cari class nya find = cari lalu add class d-none
        }
        // return panjang dari collection atau array
        return count_erorr.length;
    }
   
    function validasi_no_hp() {
        // buat ngitung ada berapa yang kena validasi
        count_erorr = [];
        if (!no_hp) {
            $('#no_hp').addClass('is-invalid'); // Ad class is-invalid
            $('#no_hp').closest('div').find('.invalid-feedback').removeClass(
                'd-none'
            ); // cari div terdekat dan cari class nya find = cari lalu REMOVE class d-none
            count_erorr += 1
        } else {
            $('#no_hp').removeClass('is-invalid').removeClass('is-invalid');
            $('#no_hp').closest('div').find('.invalid-feedback').addClass(
                'd-none'
            ); // cari div terdekat dan cari class nya find = cari lalu add class d-none
        }
        // return panjang dari collection atau array
        return count_erorr.length;
    }
    function validasi_email() {
        // buat ngitung ada berapa yang kena validasi
        count_erorr = [];
        if (!email) {
            $('#email_referal').addClass('is-invalid'); // Ad class is-invalid
            $('#email_referal').closest('div').find('.invalid-feedback').removeClass(
                'd-none'
            ); // cari div terdekat dan cari class nya find = cari lalu REMOVE class d-none
            count_erorr += 1
        } else {
            $('#email_referal').removeClass('is-invalid').removeClass('is-invalid');
            $('#email_referal').closest('div').find('.invalid-feedback').addClass(
                'd-none'
            ); // cari div terdekat dan cari class nya find = cari lalu add class d-none
        }
        // return panjang dari collection atau array
        return count_erorr.length;
    }
    function validasi_kelas() {
        // buat ngitung ada berapa yang kena validasi
        count_erorr = [];
        if (!kelas) {
            $('#kelas').addClass('is-invalid'); // Ad class is-invalid
            $('#kelas').closest('div').find('.invalid-feedback').removeClass(
                'd-none'
            ); // cari div terdekat dan cari class nya find = cari lalu REMOVE class d-none
            count_erorr += 1
        } else {
            $('#kelas').removeClass('is-invalid').removeClass('is-invalid');
            $('#kelas').closest('div').find('.invalid-feedback').addClass(
                'd-none'
            ); // cari div terdekat dan cari class nya find = cari lalu add class d-none
        }
        // return panjang dari collection atau array
        return count_erorr.length;
    }
});


