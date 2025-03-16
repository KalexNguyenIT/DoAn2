@props(['status'])

@if ($status)
<div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded relative flex items-center" role="alert">
    <svg class="w-6 h-6 text-green-500 mr-2" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 13l4 4L19 7"></path>
    </svg>
    <span class="font-semibold">{{ $status }}</span></span>
    <button class="absolute top-0 bottom-0 right-0 px-4 py-3 text-green-500 hover:text-green-700" onclick="this.parentElement.style.display='none';">
        &times;
    </button>
</div>
@endif
