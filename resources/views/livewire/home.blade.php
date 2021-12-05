<div class="flex flex-col lg:h-screen justify-between overflow-hidden">
    @isset($frontpage_work)

        <div class="flex w-full justify-center h-5/6">
            <div x-data="{open: false}">
                <img x-on:click.prevent="open = true" src="{{ asset('storage/'.$frontpage_work->cover_image) }}" class="cursor-pointer">
                <div x-show.transition.opacity="open" x-on:click="open = false" class="p-12 w-full h-100 fixed flex justify-center items-center inset-0 bg-white bg-opacity-90 z-50">
                    <div x-on:click="open = false" class="cursor-pointer absolute top-12 right-12 text-3xl text-gray-500">
                        X
                    </div>
                    <div class="flex justify-center items-center h-full">
                        <img src="{{ asset('storage/'.$frontpage_work->cover_image) }}" class="max-h-full object-scale-down">
                    </div>
                </div>
            </div>
            {{--<img alt="frontpage_img" class="pt-12 object-scale-down" src="{{ asset('storage/'.$frontpage_work->cover_image) }}" />--}}
        </div>
        <div class="p-8 lg:p-12 flex flex-col lg:flex-row justify-end lg:items-center lg:space-x-2 text-right">
            <span>{{ $frontpage_work->title_short }}</span>
            <small class="text-gray-700">
                {{ $frontpage_work->materials_used }}, {{ $frontpage_work->year }}
            </small>
        </div>

    @endisset
</div>
