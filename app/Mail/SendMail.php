<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class SendMail extends Mailable
{
    use Queueable, SerializesModels;

    private $formData;
    private $recipient;

    /**
     * SendMail constructor.
     * @param $recipient
     * @param $data
     */
    public function __construct($recipient, $data)
    {
        $this->recipient = $recipient;
        $this->formData = $data;
    }

    /**
     * Build the message.
     * @return $this
     */
    public function build()
    {
        switch ($this->recipient){
            case 'member':
                return $this->view('mail.member', [])->subject('Registration');
                break;
            case 'representative':
                return $this->view('mail.representative', ['formData' => $this->formData])->subject('New member');
                break;
        }
    }
}
