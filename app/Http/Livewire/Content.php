<?php

namespace App\Http\Livewire;

use App\Models\Work;
use Livewire\Component;

class Content extends Component
{
    public Work $work;
    public $pictures;
    public $videos;

    public function mount(Work $work)
    {
        $this->work = $work;
        $this->pictures = json_decode($work->work_images, true);
        /*if (!empty($this->pictures)) {
            (sort($this->pictures));
        }*/
        $this->videos = explode(',', $work->work_video);
    }

    public function render()
    {
        return view('livewire.content');
    }
}
