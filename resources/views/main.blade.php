@extends('layouts.app')

@section('content')

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
    <link rel="stylesheet" href="{{asset('css/main.css')}}">
    @include('layouts.header')
<div class="container">

    <div class="main">
        <h2>{{$title}}</h2>
        @foreach($posts as $value)
            {{--{{dd($value->toArray())}}--}}
            <a href="{{"http://blog/post/" . $value["id"]}}" class="item col-lg-6">
                <img class="col-lg-4 " src="{{asset('images/' . $value['img_path'])}}" alt="" width="150px">
                <div class="description col-lg-8">
                    <b>{{$value['title']}}</b>
                    <i class="icon-cancel delete_post delete{{$value["id"]}}" style="float:right; font-size: 30px; color: #A7A7A7;"></i>
                    <br>
                    <div class="text">
                        {!! $value["text"] !!}
                    </div>
                </div>
            </a>
        @endforeach
    </div>

</div>
    @include('layouts.footer')
@endsection
