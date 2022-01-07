
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