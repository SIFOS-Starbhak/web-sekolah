<section class="section">
    <table class="table table-striped">
        <thead>
            <tr>
                <th scope="col">Nama Calon Siswa</th>
                <th scope="col">NIK</th>
                <th scope="col">Kode Pos</th>
            </tr>
        </thead>
        <tbody>
            @if ($pendaftar->isEmpty())
            <tr class="text-center">
                <td class="text-dark "><b>Belum ada yang mendaftar menggunakan code ini</b></td>
            </tr>
            @else 

            @foreach ($pendaftar as $item)
            <tr>
                    <td>{{$item->user->name}}</td>
                    <td>{{$item->user->nomor_induk}}</td>
                    <td>{{$item->kode_pos}}</td>
                </tr>
                    @endforeach
            @endif
            </tbody>
        </table>
</section>