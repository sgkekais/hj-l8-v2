<?php

namespace App\Http\Livewire;

use App\Models\Work;
use Livewire\Component;

class Home extends Component
{
    public Work $frontpage_work;

    public function mount()
    {
        $this->frontpage_work = Work::where('front_page', true)->first();
    }

    public function render()
    {
        return view('livewire.home');
    }
}
