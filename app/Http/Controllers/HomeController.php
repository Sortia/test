<?php

namespace App\Http\Controllers;

use App\FirstBids;
use App\Jobs\JobMail;
use App\Mail\SendMail;
use App\Posts;
use App\SecondBids;
use App\User;
use Illuminate\http\Request;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Session;

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

        $posts = Posts::on($this->connection)->orderBy("id", "desc")->paginate(6);

        return view('main', ['title' => 'Новое', "posts" => $posts]);
    }

    public function addNewMember(Request $request, $id)
    {
        switch ($id) {
            case '1':
                $bids = new FirstBids;
                break;
            case '2':
                $bids = new SecondBids;
                break;
            default:
                dd();
        }

        $bids->name = $request['name'];
        $bids->surname = $request['surname'];
        $bids->email = $request['email'];
        $bids->phone = $request['phone'];
        $bids->education_level = $request['education'];
        $bids->name = $request['name'];
        $bids->ip = $request->ip();;
        $bids->utm = Session::get('utm');
        $bids->save();

        $representative_email = User::on($this->connection)->where('id', $id)->pluck('email')->toArray()[0];

        $this->sendMail('member', $bids->email, []);
        $this->sendMail('representative', $representative_email, $bids->toArray());

        return response()->json($bids);
    }

    private function sendMail($recipient, $email, $data)
    {
        JobMail::dispatch($recipient, $email, $data);

//        Mail::to($email)->later(10, new SendMail($recipient, $data));
    }
}


































