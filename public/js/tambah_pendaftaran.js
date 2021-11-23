$('#btnSimpan').on('click', function(event){
    event.preventDefault();
    let url = $(this).attr('href'),
        form = $('#form-tambah');


    form.find('.form-control').removeClass('is-invalid');
    form.find('.error').remove();
    // console.log(url);
    $.ajax({
        url: url,
        method: 'post',
        data: form.serialize(),
        success: function(response){
            console.log(url);
            form.trigger('reset');
            Swal.fire({
                type: 'success',
                title: 'Data calon siswa berhasil tersimpan!',
                showConfirmButton: false,
                timer: 1500
            })
        },
        error: function(xhr){
            let res = xhr.responseJSON;
        
            if($.isEmptyObject(res) == false){
                $.each(res.errors, function(key, value){
                    
                    // Server Side form validation
                    $('.form-group #'+key)
                        .addClass('is-invalid')
                        .after('<span class="error invalid-feedback">'+value+'</span>')
                    
                })
            }
        }
    });

});

// Pilih asal sekolah dari modal
$('body').on('click', '#btnPilih', function(event){
    event.preventDefault();
    console.log('click')

    $('#id_asal_sekolah').val($(this).data('id'));
    $('#nama_asal_sekolah').val($(this).data('nama-sekolah'));
    $('#modalListAsalSekolah').modal('hide');
})




$('#btnTambahData').click(function(event){
    event.preventDefault();
    // console.log('show');
    // return
    $('#asalSekolahForm').trigger('reset');
    $('#modalTitle').html('Tambah Data Asal Sekolah');
    $('#btnSimpanAsalSekolah').val('simpan-data').removeClass('btn-danger').addClass('btn-primary').text('Simpan');
    $('#form-id').remove();
    $('#modalAsalSekolah').modal('show');

    // hapus pesan error sebelumnya
    let form = $('#modalAsalSekolah').find('form');
        form.find('.form-control').removeClass('is-invalid');
        form.find('.error').remove();
});

$('body').on('click', '#btnEdit', function(event){
    event.preventDefault();
    
    $('#form-id').remove();

    let id = $(this).data('id');

    let form = $('#modalAsalSekolah').find('form');
    form.find('.form-control').removeClass('is-invalid');
    form.find('.error').remove();
    
    $('#modalAsalSekolah').modal('show');
    $('#modalTitle').html('Edit Data Asal Sekolah');
    $('#btnSimpanAsalSekolah').val('simpan-perubahan').removeClass('btn-primary').addClass('btn-danger').text('Simpan Perubahan');

    $('#modalAsalSekolah .modal-body').prepend(`
    <div id="form-id" class="form-group">
        <input type="hidden" name="id" id="id" class="form-control col-md-4" value="${id}">
    </div>
    `)

    
    // GET data sesuai dengan id
    $.ajax({
        url: 'panitia/asal_sekolah/edit/'+id,

        method: 'GET',
        success: function(response){
            // let form = $('#modalAsalSekolah').find('form');
            // $.each(response, function(key, value){
            //     $('.form-group #'+key).val(value);
            // })
            $('.form-group #id').val(response.id);
            $('.form-group #npsn').val(response.npsn);
            $('.form-group #nama_sekolah').val(response.nama_sekolah);
            $('.form-group #alamat_asal_sekolah').val(response.alamat);
        },
        error: function(error){
            console.log(error);
        }
    })
    
});

$('#btnBatal').click(function(){
    let form = $('#modalAsalSekolah').find('form');
        form.find('.form-control').removeClass('is-invalid');
        form.find('.text-danger').remove();
});

$('#btnSimpanAsalSekolah').click(function(e){
    e.preventDefault()
    // console.log("fuck");

    if( $(this).val() === 'simpan-data'){
        // Jalankan ajax untuk menyimpan data baru
        let form = $('#modalAsalSekolah').find('form');
        
        if (form.find('#nama_sekolah').val() !== null) {
            form.find('#nama_sekolah').removeClass('is-invalid');
            $('#nama_sekolahError').empty();
            
        }else if(form.find('#npsn_sekolah').val() !== null ){
            form.find('#npsn_sekolah').removeClass('is-invalid');
            $('#npsn_sekolahError').empty();

        }else if(form.find('#alamat_sekolah').val() !== null ){
            form.find('#alamat_sekolah').removeClass('is-invalid');
             $('#alamat_sekolahError').empty();

        }else{
   


        }
        $.ajax({
            url: '/panitia/asal_sekolah/store',
            method: 'POST',
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: form.serialize(),
            success: function(response){
               // console.log(response);
                form.trigger('reset');
                Swal.fire({
                    type: 'success',
                    title: 'Data Tersimpan!',
                    text: response.message,
                })
                $('#modalAsalSekolah').modal('hide');
                $('#datatable').DataTable().ajax.reload();
            },
            error: function(error){
                let res = error.responseJSON;
                if(!$.isEmptyObject(res)){
                    console.log(res)
                    $.each(res.errors, function(key, value){
                        // console.log(key,value)
                        // $('#nama_sekolahError').text(error.responseJSON.errors.nama_sekolah);
                        // $('#alamat_sekolahError').text(error.responseJSON.errors.alamat_sekolah);
                        $('#'+key).addClass('is-invalid')
                        $('#'+key+'Error').text(value)
                    })
                }
            }
        });
    }else if( $(this).val() === 'simpan-perubahan'){
        // Jalankan ajax untuk menyimpan perubahan data sesuai dengan id
        let form = $('#modalAsalSekolah').find('form');
        form.find('.form-control').removeClass('is-invalid');
        form.find('.error').remove();

        let id = $('#id').val();  

        $.ajax({
            url: '/panitia/asal_sekolah/update/' + id,
            method: 'PUT',
            headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
            data: form.serialize(),
            success: function(response){
                Swal.fire({
                    type: 'success',
                    title: 'Berhasil Diperbaharui!',
                    text: response.message
                });
                $('#modalAsalSekolah').modal('hide');
                $('#datatable').DataTable().ajax.reload();
            },
            error: function(error){
                let res = error.responseJSON;
                if(!$.isEmptyObject(res)){
                    $.each(res.errors, function(key, value){
                        $('.form-group #'+key)
                            .addClass('is-invalid')
                            .after('<span class="error invalid-feedback">'+value+'</span>')
                    })
                }
            }
        })
    }
});

$('body').on('click', '#btnHapus', function(event){
    event.preventDefault();
    Swal.fire({
        type: 'warning',
        title: 'Hapus Data Asal Sekolah ini?',
        text: 'Data yang telah dihapus tidak bisa dikembalikan!',
        showConfirmButton: true,
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Ya',
        cancelButtonText: 'Batal'
    }).then(result => {
        if(result.value){
            let id = $(this).data('id');

            $.ajax({
                type: "DELETE",
                url: "panitia/asal_sekolah/" + id,
                data: {
                    id: id
                },
                success: function(res){
                    $('#dataTableSekolah').DataTable().ajax.reload();     
                    Swal.fire({
                        type: 'success',
                        title: 'Sukses Dihapus!',
                        text: res.message
                    })
                },
                error: function(xhr){
                    Swal.fire({
                        type: 'error',
                        title: 'Oopss...',
                        text: xhr.statusText,
                        footer: 'Data ini sepertinya berelasi dengan data lainnya.'
                    })
                    console.log(xhr)
                }
            })
        }
    })
});


// npsnSekolah = $('#npsn_sekolah').val();
// namaSekolah = $('#nama_sekolah').val();
// alamatSekolah = $('#alamat_sekolah').val(); // ambil value dari mapel



// function validasi_npsnSekolah() {
//     // buat ngitung ada berapa yang kena validasi
//     count_erorr = [];
//     if (!npsnSekolah) {
//         $('#npsn_sekolah').addClass('is-invalid'); // Ad class is-invalid
//         $('#npsn_sekolah').closest('div').find('.invalid-feedback').removeClass(
//             'd-none'
//         ); // cari div terdekat dan cari class nya find = cari lalu REMOVE class d-none
//         count_erorr += 1
//     } else {
//         $('#npsn_sekolah').removeClass('is-invalid').removeClass('is-invalid');
//         $('#npsn_sekolah').closest('div').find('.invalid-feedback').addClass(
//             'd-none'
//         ); // cari div terdekat dan cari class nya find = cari lalu add class d-none
//     }
//     // return panjang dari collection atau array
//     return count_erorr.length;
// }
// function validasi_namaSekolah() {
//     // buat ngitung ada berapa yang kena validasi
//     count_erorr = [];
//     if (!namaSekolah) {
//         $('#nama_sekolah').addClass('is-invalid'); // Ad class is-invalid
//         $('#nama_sekolah').closest('div').find('.invalid-feedback').removeClass(
//             'd-none'
//         ); // cari div terdekat dan cari class nya find = cari lalu REMOVE class d-none
//         count_erorr += 1
//     } else {
//         $('#nama_sekolah').removeClass('is-invalid').removeClass('is-invalid');
//         $('#nama_sekolah').closest('div').find('.invalid-feedback').addClass(
//             'd-none'
//         ); // cari div terdekat dan cari class nya find = cari lalu add class d-none
//     }
//     // return panjang dari collection atau array
//     return count_erorr.length;
// }
// function validasi_alamatSekolah() {
//     // buat ngitung ada berapa yang kena validasi
//     count_erorr = [];
//     if (!alamatSekolah) {
//         $('#alamat_sekolah').addClass('is-invalid'); // Ad class is-invalid
//         $('#alamat_sekolah').closest('div').find('.invalid-feedback').removeClass(
//             'd-none'
//         ); // cari div terdekat dan cari class nya find = cari lalu REMOVE class d-none
//         count_erorr += 1
//     } else {
//         $('#alamat_sekolah').removeClass('is-invalid').removeClass('is-invalid');
//         $('#alamat_sekolah').closest('div').find('.invalid-feedback').addClass(
//             'd-none'
//         ); // cari div terdekat dan cari class nya find = cari lalu add class d-none
//     }
//     // return panjang dari collection atau array
//     return count_erorr.length;
// }






