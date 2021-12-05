<?php

namespace App\Http\Livewire;

use Lukeraymonddowning\Honey\Traits\WithHoney;
use Mail;
use Livewire\Component;

class Contact extends Component
{
    use WithHoney;

    public $success;
    public $name;
    public $email;
    public $comment;

    protected $rules = [
        'name' => 'required',
        'email' => 'required|email',
        'comment' => 'required|min:5',
    ];

    public function contactFormSubmit()
    {
        $this->validate();

        Mail::send('email',
            array(
                'name' => $this->name,
                'email' => $this->email,
                'comment' => $this->comment,
            ), function ($message) {
                $message->from('info@harryjeon.com');
                $message->to('harry.jeon86@gmail.com')->subject('Neue Nachricht von harryjeon.com');
        });

        $this->success = 'Thank you for your message :)';

        $this->clearFields();
    }

    public function clearFields()
    {
        $this->name = "";
        $this->email = "";
        $this->comment = "";
    }

    public function render()
    {
        return view('livewire.contact');
    }
}
