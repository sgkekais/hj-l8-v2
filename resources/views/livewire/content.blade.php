<div class="px-8 lg:pl-0 lg:pr-8 pb-8 lg:pt-12">
    <div class="text-xl font-serif">
        {{ $work->title_long }}
    </div>
    <div class="pt-2 text-gray-700">
        {{ $work->materials_used }}, {{ $work->year }}
    </div>
    @if($work->description)
        <div class="pt-4 text-sm text-gray-600">
            {{ $work->description }}
        </div>
    @endif

    @if($work->cover_image)
        <div class="pt-8">
            <img class="w-4/5" src="{{ asset('storage/'.$work->cover_image) }}" />
        </div>
    @endif

    @if($work->work_type == "video" && $work->work_video)
        <div class="pt-6">
            @foreach ( $videos as $video )
                <div class="pt-8 flex justify-start aspect-w-16 aspect-h-9">
                    <iframe class="" src="{{ $video }}" allowFullScreen mozallowfullscreen webkitAllowFullScreen></iframe>
                </div>
            @endforeach
        </div>

    @elseif($work->work_type == "images")
        <div class="pt-8 grid gap-8 lg:gap-12 grid-cols-1 lg:grid-cols-2">
            @foreach ( $pictures ?: [] as $picture )
                <div x-data="{open: false}">
                    <img x-on:click.prevent="open = true" src="{{ asset('storage/'.$picture) }}" class="cursor-pointer">
                    <div x-show.transition.opacity="open" x-on:click="open = false" class="p-12 w-full h-100 fixed flex justify-center items-center inset-0 bg-white bg-opacity-90 z-50">
                        <div x-on:click="open = false" class="cursor-pointer absolute top-12 right-12 text-3xl text-gray-500">
                            X
                        </div>
                        <div class="flex justify-center items-center h-full">
                            <img src="{{ asset('storage/'.$picture) }}" class="max-h-full object-scale-down">
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    @endif

    @if($work->wip_images)
        @if($work->wip_description)
            <div class="pt-12 text-gray-700">
                {{ $work->wip_description }}
            </div>
        @endif
        <div class="pt-4 grid gap-8 lg:gap-12 grid-cols-1 lg:grid-cols-2">
            @foreach ( $wip_pictures ?: [] as $wip_picture )
                <div x-data="{open: false}">
                    <img x-on:click.prevent="open = true" src="{{ asset('storage/'.$wip_picture) }}" class="cursor-pointer">
                    <div x-show.transition.opacity="open" x-on:click="open = false" class="p-12 w-full h-100 fixed flex justify-center items-center inset-0 bg-white bg-opacity-90 z-50">
                        <div x-on:click="open = false" class="cursor-pointer absolute top-12 right-12 text-3xl text-gray-500">
                            X
                        </div>
                        <div class="flex justify-center items-center h-full">
                            <img src="{{ asset('storage/'.$wip_picture) }}" class="max-h-full object-scale-down">
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    @endif
</div>
