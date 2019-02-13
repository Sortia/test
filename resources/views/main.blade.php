@extends('layouts.app')

@section('content')

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="{{asset('css/main.css')}}">
    {{--<link rel="stylesheet" href="{{asset('css/fancybox.css')}}">--}}
    <link rel="stylesheet" href="{{asset('css/lightbox.min.css')}}">

    <script type="text/javascript" src="{{asset("js/jquery.js")}}"></script>
    {{--<script src="{{asset('js/jQuery.js')}}"></script>--}}
    {{--<script src="{{asset('js/jquery.fancybox-1.3.4.pack.js')}}"></script>--}}

    <script type="text/javascript" src="{{asset("js/lightbox.min.js")}}"></script>



    @include('layouts.header')
    <div class="container">

        <div class="main">
            <h2>{{$title}}</h2>
            @foreach($posts as $value)
                {{--{{dd($value->toArray())}}--}}

                <div class="item col-lg-6">

                    <img class="col-lg-4" data-lightbox="example-1" src="{{asset('images/' . $value['img_path'])}}" alt="" width="150px">
                    <a href="{{"http://blog/post/" . $value["id"]}}">
                        <div class="description col-lg-8">
                            <b>{{$value['title']}}</b>
                            <i class="icon-cancel delete_post delete{{$value["id"]}}"
                               style="float:right; font-size: 30px; color: #A7A7A7;"></i>
                            <br>
                            <div class="text">
                                {!! $value["text"] !!}
                            </div>
                        </div>
                    </a>
                </div>
            @endforeach
        </div>
        <?php echo $posts->render(); ?>
    </div>
    @include('layouts.footer')




@endsection
