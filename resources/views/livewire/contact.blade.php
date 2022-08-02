<div class="px-8 lg:px-0 py-8">
    <form wire:submit.prevent="contactFormSubmit" class="w-full max-w-lg" method="POST">
        @csrf
        <div class="flex flex-wrap -mx-3 mb-6">
            <div class="w-full lg:w-3/4 px-3">
                <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-first-name">
                    Name
                </label>
                <input wire:model.defer="name"
                    class="appearance-none block w-full bg-gray-100 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-purple-700"
                    id="grid-first-name"
                    type="text"
                    placeholder="Name"
                    value="{{ old('name') }}">
                @error('name')
                    <p class="text-red-500 text-xs">{{ $message }}</p>
                @enderror
            </div>
        </div>
        <div class="flex flex-wrap -mx-3 mb-6">
            <div class="w-full lg:w-3/4 px-3">
                <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-password">
                    E-mail
                </label>
                <input wire:model.defer="email"
                    class="appearance-none block w-full bg-gray-100 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-purple-700"
                    id="email"
                    type="email"
                    placeholder="Email Address"
                    value="{{ old('email') }}">
                @error('email')
                    <p class="text-red-500 text-xs">{{ $message }}</p>
                @enderror
            </div>
        </div>
        <div class="flex flex-wrap -mx-3 mb-6">
            <div class="w-full px-3">
                <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-password">
                    Message
                </label>
                <textarea wire:model.defer="comment" class=" no-resize appearance-none block w-full bg-gray-100 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-purple-700 h-48 resize-none"
                    id="message"
                    placeholder="Your message here..."
                >
                    {{ old('comment') }}
                </textarea>
                @error('comment')
                    <p class="text-red-500 text-xs">{{ $message }}</p>
                @enderror
            </div>
        </div>
        <div class="flex mb-6 items-center">
            <input wire:model.defer="privacy_check" id="privacy_check" type="checkbox"
                   class="bg-gray-100 border border-gray-200 rounded focus:outline-none focus:bg-white focus:border-purple-700 checked:bg-purple-700 checked:border-transparent ">
            <div class="pl-4 text-sm">
                @error('privacy_check')
                <p class="text-red-500 text-xs">{{ $message }}</p>
                @enderror
                Mit dem Absenden des Kontaktformulars erklären Sie sich damit einverstanden, dass Ihre Daten zur Bearbeitung Ihres Anliegens verwendet werden.
            </div>
        </div>

        <x-honey />
        <div class="lg:flex lg:items-center">
            <div class="">
                <button class="flex items-center shadow bg-indigo-700 hover:bg-indigo-600 focus:shadow-outline focus:outline-none text-white font-bold py-2 px-4 rounded" type="submit">
                    <span wire:loading>
                        <svg class="animate-spin h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                          <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
                          <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                        </svg>
                    </span>
                    <span wire:loading.remove>
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 8h10M7 12h4m1 8l-4-4H5a2 2 0 01-2-2V6a2 2 0 012-2h14a2 2 0 012 2v8a2 2 0 01-2 2h-3l-4 4z" />
                        </svg>
                    </span>
                    <span class="pl-2">Send</span>
                </button>
            </div>
            <div class="pl-4">
                @if ($success)
                    <div class="text-green-700">
                        {{ $success }}
                    </div>
                @endif
            </div>
        </div>
    </form>
</div>
