<!-- Sidebar (trong layout admin) -->
<nav class="bg-gray-800 w-full h-17 z-10 flex items-center justify-end fixed top-0 left-0 p-6">
    <x-dropdown align="right" width="48">
        <x-slot name="trigger">
            <button class="inline-flex items-center px-3 border border-transparent text-sm leading-4 font-medium rounded-md text-gray-500 hover:text-gray-700 focus:outline-none transition ease-in-out duration-150">
                <div>{{ Auth::user()->name }}</div>
                <div class="ms-1">
                    <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                        <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                    </svg>
                </div>
            </button>
        </x-slot>

        <x-slot name="content">
            <x-dropdown-link :href="route('profile.edit')">
                {{ __('Profile') }}
            </x-dropdown-link>

            <!-- Authentication -->
            <form method="POST" action="{{ route('logout') }}">
                @csrf

                <x-dropdown-link :href="route('logout')"
                    onclick="event.preventDefault();
                                                this.closest('form').submit();">
                    {{ __('Log Out') }}
                </x-dropdown-link>
            </form>
        </x-slot>
    </x-dropdown>
</nav>
<div x-data=" { open: true } ">
    <!-- Sidebar chính -->
    <div :class="open ? 'w-80' : 'w-24'" class="min-h-screen z-20 fixed bg-gray-800 text-white flex flex-col transition-all duration-300">
        <!-- Header Sidebar -->
        <div class="flex items-center justify-between px-6 py-4 border-b border-gray-700">
            <a href="{{ route('dashboard') }}" class="flex items-center flex-nowrap">
                <x-application-logo-6 class="fill-current text-gray-500" />
            </a>
            <p x-show="open" class="inline-block px-4 text-xl font-semibold whitespace-nowrap">Quản lý thiết bị</p>
            <!-- Nút toggle sidebar -->
            <button @click="open=!open" class="p-2 focus:outline-none">
                <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                </svg>
            </button>

        </div>

        <!-- Navigation Links -->
        <nav class="flex-1 mt-4">
            <!-- Menu chính Dashboard -->
            <a href="{{ route('dashboard') }}" class="flex items-center p-4 hover:bg-gray-700 transition-colors">
                <svg xmlns="http://www.w3.org/2000/svg" class="w-6 h-6 text-white" fill="currentColor" stroke="currentColor" viewBox="0 0 576 512">
                    <path d="M575.8 255.5c0 18-15 32.1-32 32.1l-32 0 .7 160.2c0 2.7-.2 5.4-.5 8.1l0 16.2c0 22.1-17.9 40-40 40l-16 0c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1L416 512l-24 0c-22.1 0-40-17.9-40-40l0-24 0-64c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32 14.3-32 32l0 64 0 24c0 22.1-17.9 40-40 40l-24 0-31.9 0c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2l-16 0c-22.1 0-40-17.9-40-40l0-112c0-.9 0-1.9 .1-2.8l0-69.7-32 0c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z" />
                </svg>
                <span x-show="open" class="ml-3">Dashboard</span>
            </a>

            <!-- Menu có các thư mục con: Reports -->
            <div x-data="{ openSub: false }">
                <button @click="openSub = !openSub" class="flex items-center w-full p-4 hover:bg-gray-700 transition-colors focus:outline-none">
                    <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <!-- Icon Reports (ví dụ) -->
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M9 17v-6a2 2 0 012-2h2a2 2 0 012 2v6" />
                    </svg>
                    <span x-show="open" class="ml-3">Reports</span>
                    <!-- Icon mũi tên xoay -->
                    <svg x-show="open" :class="{'rotate-90': openSub}" class="w-4 h-4 ml-auto transition-transform duration-300" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M9 5l7 7-7 7" />
                    </svg>
                </button>

                <!-- Menu con -->
                <div x-show="openSub" x-cloak class="ml-8">
                    <a href="#" class="block p-2 hover:bg-gray-600 rounded">
                        <span x-show="open">Overview</span>
                    </a>
                    <a href="#" class="block p-2 hover:bg-gray-600 rounded">
                        <span x-show="open">Analytics</span>
                    </a>
                </div>
            </div>

            <!-- Thêm các mục menu khác nếu cần -->
        </nav>

        <!-- Phần Profile & Log Out -->
        <div class="border-t border-gray-700 p-4">
            <div class="mb-2" x-show="open">
                <div class="text-sm font-medium">{{ Auth::user()->name }}</div>
                <div class="text-xs text-gray-400">{{ Auth::user()->email }}</div>
            </div>
            <form method="POST" action="{{ route('logout') }}">
                @csrf
                <button type="submit" class="flex items-center w-full p-2 hover:bg-gray-700 transition-colors focus:outline-none">
                    <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <!-- Icon Log Out -->
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                            d="M17 16l4-4m0 0l-4-4m4 4H7" />
                    </svg>
                    <span x-show="open" class="ml-2 text-sm">Log Out</span>
                </button>
            </form>
        </div>
    </div>

    <!-- Main Content -->
    <div class="flex-1 p-6 overflow-auto">
        @yield('content')
    </div>
</div>