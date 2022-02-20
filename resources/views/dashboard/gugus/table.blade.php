@foreach ($gugus as $list)
@php
     $casis_gugus = App\Models\CalonSiswa::where('gugus_id','=',$list->id)->get();  
@endphp
 <div class="tab-pane fade " id="gugus{{$loop->iteration}}" role="tabpanel" aria-labelledby="gugus{{$loop->iteration}}-tab">
     <table class="table table-lg gugus" id="">
         <thead>
           <tr>
             <th scope="col">Nama</th>
             <th scope="col">NIK</th>
         
           </tr>
         </thead>
         <tbody>
             @if ($casis_gugus->isEmpty())
                 <tr>
                         <td class="text-dark">
                                 <h4>
                     Calon Siswa di {{$list->nama_gugus}} Masih Kosong

                                 </h4>
                         </td>
                 </tr>
                 @else 
                 @foreach ($casis_gugus as $item)
                 <tr>
                   <th scope="row">{{$item->nama_lengkap}}</th>
                   <td>{{$item->nik}}</td>
                 </tr>
                 @endforeach
             @endif
         </tbody>
       </table>
 </div>

 @endforeach

