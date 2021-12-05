<div>
    @isset($frontpage_work)

        <div>
            <img src="{{ asset('storage/'.$frontpage_work->cover_image) }}" />
        </div>
        <div class="flex flex-col text-right">
            <span>{{ $frontpage_work->title_short }}</span>
            <small class="text-muted">
                {{ $frontpage_work->materials_used }}, {{ $frontpage_work->year }}
            </small>
        </div>

    @endisset
</div>
