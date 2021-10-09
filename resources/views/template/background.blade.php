@foreach ($settings as $item)
    @if ($item->display_name == 'Fitur Home Page')
        <style>
            #hero {
                width: 100% !important;
                height: 100% !important;
                background: url('{{ asset("storage/$item->value") }}') top center;
                background-size: cover !important;
                position: relative !important;
            }

            #hero:before {
                content: "" !important;
                background: rgba(0, 0, 0, 0.4) !important;
                position: absolute !important;
                bottom: 0 !important;
                top: 0 !important;
                left: 0 !important;
                right: 0 !important;
            }

        </style>
    @endif
@endforeach


<section id="hero" class="d-flex justify-content-center align-items-center">
    <div class="container position-relative" style="margin-bottom: 10%;" data-aos="zoom-in" data-aos-delay="100">
        @foreach ($settings as $item)
            @if ($item->display_name == 'Heading')

                <h1>{!! $item->value !!}</h1>
            @elseif( $item->display_name == 'Sub Heading' )
                <h2>{{ $item->value }}</h2>
            @endif
        @endforeach
        <a href="{{ route('login') }}" target="_blank" class="btn-get-started">Login</a>
    </div>
</section>
