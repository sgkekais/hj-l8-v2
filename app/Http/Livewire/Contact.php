<?php

namespace App\Http\Livewire;

use Livewire\Component;

class Contact extends Component
{
    public $success;

    public function render()
    {
        return view('livewire.contact');
    }
}
