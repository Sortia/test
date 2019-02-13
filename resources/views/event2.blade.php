@extends('layouts.app')
@section('content')

    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Document</title>

    <link rel="stylesheet" href="{{asset("css/blueberry.css")}}"/>
    <link rel="stylesheet" href="{{asset("css/register.css")}}">
    <link rel="stylesheet" href="{{asset("css/bootstrap-reboot.css")}}">
    <link rel="stylesheet" href="{{asset("css/bootstrap.min.css")}}">
    <script src="{{asset("js/bootstrap.min.js")}}"></script>


    <script>
        $(window).load(function () {
            $('.blueberry').blueberry();
        });
    </script>

    <body>

    <h1 class="event-name">Регистрация на мероприятие 2!</h1>

    <div class="container">


        <form action="/registration" method="GET" style="width: 500px; margin: auto;">

            <div class="form-group row">
                <label for="inputName" class="col-sm-2 col-form-label">Name</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputName" placeholder="Name" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputSurname" class="col-sm-2 col-form-label">Surname</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputSurname" placeholder="Surname" required>
                </div>
            </div>

            <div class="form-group row">
                <label for="inputPhone" class="col-sm-2 col-form-label">Phone</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="inputPhone" placeholder="Phone" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="inputEmail" placeholder="Email" required>
                </div>
            </div>


            <div class="form-group row">
                <label for="educationLevel" class="col-sm-2 col-form-label">Education</label>
                <div class="col-sm-10">
                    <select class="custom-select" required>
                        <option selected value="1">Bachelor</option>
                        <option value="2">Master</option>
                        <option value="3">PhD</option>
                    </select>
                </div>
            </div>

            <div class="form-group row">
                <div class="offset-sm-2 col-sm-10">
                    <button type="submit" class="btn btn-success">Sign up</button>
                </div>
            </div>


        </form>

        <div class="fish-text">
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio fuga necessitatibus nihil placeat
                quasi. Culpa deserunt distinctio dolorum facere fugit, harum id illo inventore maxime minima
                non.Architecto cumque deserunt distinctio eveniet excepturi, illo iure laboriosam laborum modi molestiae
            </p>
        </div>
        <div id="doc">
            <div id="content">

                <div class="blueberry">
                    <ul class="slides">
                        <li><img src="http://marktyrrell.com/labs/blueberry/img/slide1.jpg"/></li>
                        <li><img src="http://marktyrrell.com/labs/blueberry/img/slide2.jpg"/></li>
                        <li><img src="http://marktyrrell.com/labs/blueberry/img/slide3.jpg"/></li>
                        <li><img src="http://marktyrrell.com/labs/blueberry/img/slide4.jpg"/></li>
                    </ul>
                </div>
            </div>
        </div>


    </div>
@endsection