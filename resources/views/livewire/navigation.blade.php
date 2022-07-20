<div class="text-center lg:text-left">
    <div class="flex flex-col">
        <a href="{{ route('home') }}" class="font-semibold hover:underline">Harry Jeon</a>
        <div class="text-lg font-mono tracking-tighter">전 해리</div>
    </div>
    <div class="py-1 lg:py-2 text-gray-500">
        &middot;
    </div>
    <div x-data="{ open: false }" class="">
        <ul class="space-y-4 text-gray-700">
            <li >
                <div x-on:click="open = ! open" class="font-semibold cursor-pointer hover:underline">
                    works
                </div>
                <div style=""
                     x-ref="container1"
                     x-bind:style="open ? 'max-height: ' + $refs.container1.scrollHeight + 'px' : ''"
                     :class="open ? 'pt-2 pb-2' : ''"
                     class="relative overflow-hidden transition-all max-h-0 duration-500 text-gray-500"
                >
                    @foreach($works as $work)
                        <div class="pb-2 text-sm">
                            <a href="{{ route('work', $work) }}" class="hover:underline">{{ $work->link_title }}</a>
                        </div>
                    @endforeach
                </div>
            </li>
            <li class="font-semibold">
                <a href="{{ route('vita') }}" class="hover:underline">vita</a>
            </li>
            <li class="font-semibold">
                <a href="{{ route('contact') }}" class="hover:underline">contact</a>
            </li>
        </ul>
    </div>
    <div class="py-1 lg:py-2 text-gray-500">
        &middot;
    </div>
    <div class="text-xs lg:text-sm text-gray-500">
        Harry Jeon &copy; {{ date('Y') }}
    </div>
</div>

