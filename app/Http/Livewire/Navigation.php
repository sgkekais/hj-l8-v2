<?php

namespace App\Http\Livewire;

use App\Models\Work;
use Livewire\Component;

class Navigation extends Component
{
    public $works;

    public function mount()
    {
        $this->works = Work::orderBy('year', 'desc')->orderBy('id', 'desc')->get();
    }

    public function render()
    {
        return view('livewire.navigation');
    }
}
