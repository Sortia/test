<?php

namespace App\Http\Controllers;

use App\Posts;

class HomeController extends Controller
{
    private $connection = "test";
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
//        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function Main()
    {

        $posts = Posts::on($this->connection)->orderBy("id", "desc")->paginate(10);

        return view('main', ['title' => 'Новое', "posts" => $posts]);
    }
}
