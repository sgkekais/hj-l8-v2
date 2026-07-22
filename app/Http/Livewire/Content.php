<?php

namespace App\Http\Livewire;

use App\Models\Work;
use Livewire\Component;

class Content extends Component
{
    public Work $work;
    public $work_images0;
    public $work_images;
    public $wip_pictures;
    public $videos;

    public function mount(Work $work)
    {
        $this->work = $work;
        $this->work_images0 = json_decode($work->work_images0, true);
        $this->work_images = json_decode($work->work_images, true);
        $this->wip_pictures = json_decode($work->wip_images, true);
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
