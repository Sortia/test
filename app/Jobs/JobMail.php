<?php

namespace App\Jobs;

use App\Mail\SendMail;
use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\Mail;

class JobMail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    private $recipient;
    private $email;
    private $data = [];

    /**
     * Create a new job instance.
     *
     * @param $recipient
     * @param $email
     * @param $data
     */
    public function __construct($recipient, $email, $data)
    {
        $this->recipient = $recipient;
        $this->email = $email;
        $this->data = $data;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle()
    {
        Mail::to('alex-kiyan.lug@mail.ru')->send( new SendMail());
    }
}





















