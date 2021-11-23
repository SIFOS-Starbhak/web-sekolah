
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

        // ClassicEditor
        // .create( document.querySelector( '#task-' ) )
        // .catch( error => {
        //     console.error( error );
        // } );