<div class="flex flex-col lg:h-screen justify-between overflow-hidden">
    @isset($frontpage_work)

        <div class="flex w-full justify-center h-5/6">
            <img alt="frontpage_img" class="lg:pt-12 object-scale-down" src="{{ asset('storage/'.$frontpage_work->cover_image) }}" />
        </div>
        <div class="p-8 lg:p-12 flex flex-col lg:flex-row justify-end lg:items-center lg:space-x-2 text-right">
            <span>{{ $frontpage_work->title_short }}</span>
            <small class="text-gray-700">
                {{ $frontpage_work->materials_used }}, {{ $frontpage_work->year }}
            </small>
        </div>

    @endisset
</div>
