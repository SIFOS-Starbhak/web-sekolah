
<section class="section">
    <div class="section-header">
        <h1>Pembayaran Casis</h1>
    </div>

    @if ($pembayaran == null || $pembayaran == '' || $pembayaran->isEmpty())
        <h1 class="text-danger text-center">Belum melakukan Pembayaran</h1>
    @else
        <div class="section-body data-pembayaran">
            <div class="row">
                @foreach ($pembayaran as $data)
                    <div class="col-12 col-sm-6 col-md-6 col-lg-3">
                        <article class="article article-style-b">
                            <div class="article-header">

                                <div class="article-image" id="imgButton" data-toggle="modal"
                                    data-attr="{{ route('panitia.detail_image', $data->id) }}"
                                    data-target=".bd-example-modal-image">
                                    <img src="{{ asset('storage/' . $data->bukti_bayar) }}" class="img-fluid "
                                        alt="{{ $data->created_at }}" />
                                </div>
                                <div class="article-badge">
                                    @if ($data->status == '' || $data->status == null)
                                    @elseif($data->status == 1)
                                        <div class="article-badge-item bg-success"><i
                                                class="fas fa-check-circle fa-2x"></i>di Terima</div>
                                    @else
                                        <div class="article-badge-item bg-danger"><i
                                                class="far fa-times-circle fa-2x"></i>di Tolak</div>

                                    @endif
                                </div>
                            </div>
                            <div class="article-details">
                                <div class="article-category ml-4">{{ $data->created_at->isoFormat('dddd, D MMMM Y') }}
                                </div>
                                <div class="article-title">
                                    <h2><a>{{ $data->metode_bayar }}</a></h2>
                                    <h2><a>Nominal : {{ 'Rp ' . number_format($data->nominal, 2, ',', '.') }}</a></h2>
                                </div>
                                <p>Tipe Pembayaran : {{ $data->tipePembayaran->nama_pembayaran }}</p>
                                <div class="article-cta">
                                  @if ($data->status !== null)
                                
                                  @else
                                  <button class="btn btn-danger konfirmasi"  data-attr="0" data-id="{{$data->id}}">Tolak</button>
                                  <button class="btn btn-success konfirmasi"  data-attr="1" data-id="{{$data->id}}">Terima</button>

                                  @endif
                                  
                                </div>
                            </div>
                        </article>
                    </div>
                @endforeach

    @endif
    </div>
    </div>
</section>

<div class="modal fade bd-example-modal-image " id="largeModal" tabindex="-1" role="dialog"
    aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-body modal-image" id="imageBody">

        </div>
    </div>
</div>
