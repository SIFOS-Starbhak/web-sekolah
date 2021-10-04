@include('template.navbar')
@include('template.background')

<div class="container-md mt-5 mb-5">
    <h3><b>{{$articleShow->title}}</b></h3>
    <hr>
    <td>
        <br>
    </td>
    <p>Posted on <a href="">{{ Carbon\Carbon::parse($articleShow->created_at)->isoFormat('dddd, D MMMM Y') }}</a> | by <a href="#">{{$author->name}}</a></p>
    {{-- <p>Posted on <a href="">August , 2016</a> | by <a href="">smktaruanbhakti</a></p> --}}
    <br>
    <div>
            {!! $articleShow->body !!}
    </div>
</div>
<br>

@include('template.footer')