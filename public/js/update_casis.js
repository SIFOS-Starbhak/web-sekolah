
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
            $('#jalur_edit').on("click", function(e){
            e.preventDefault();
            // console.log('w')
                
                
                $('#note_for_prestasi_edit').text("*Pilih Umum Jika tidak ada Prestasi / Kosongkan")
    
                if ($(this).val() == "Prestasi" || $(this).val() == "" ) {
                   
                    $("#prestasi_edit").removeClass("d-none");
                    $('#note_for_prestasi_edit').removeClass('d-none');

                  
    
                }else{
                   $("#prestasi_edit").addClass("d-none");
                    $("#jenis_prestasi_edit,#tingkat_prestasi_edit,#nama_prestasi_edit,#tahun_prestasi_edit,#penyelenggara_prestasi_edit,#peringkat_prestasi_edit").val("");
                    $('#note_for_prestasi_edit').addClass('d-none');
    
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
    
            $("#kip_edit").change(function() {
                if ($(this).val() == "" || $(this).val() == 'Tidak') {
                    $("#no_kip_edit").attr("disabled", "disabled").val('');
                    $("#nama_kip_edit").attr("disabled", "disabled").val('');
                } else {
                    $("#no_kip_edit").removeAttr("disabled");
                    $("#nama_kip_edit").removeAttr("disabled");
                }
            }).trigger("change");
         