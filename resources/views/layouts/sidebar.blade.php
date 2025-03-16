<div class="flex h-screen bg-gray-100">
    <!-- Sidebar -->
    <div id="sidebar" class="w-64 bg-gray-900 text-white flex flex-col p-4 transition-ease-in-out duration-800">
        <div class="text-[15px] font-bold mb-6 flex items-center">
            <a href="{{ route('dashboard') }}" class="flex items-center py-4 px-2 transition-colors border-b border-white">
                <x-application-logo-6 class="fill-current text-gray-500" />
                <span id="sidebar-text" class="inline-block px-4 font-semibold">QUẢN LÝ THIẾT BỊ</span>
            </a>
        </div>
        <nav class="flex-1 overflow-y-auto 
                    [&::-webkit-scrollbar]:w-2
                    [&::-webkit-scrollbar-track]:rounded-full
                    [&::-webkit-scrollbar-track]:bg-gray-100
                    [&::-webkit-scrollbar-thumb]:rounded-full
                    [&::-webkit-scrollbar-thumb]:bg-gray-300
                    dark:[&::-webkit-scrollbar-track]:bg-neutral-700
                    dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500">
            <ul>
                <a href="{{ route('dashboard') }}">
                    <li class="mb-4 flex items-center space-x-2 hover:bg-blue-700 p-2 rounded-md">
                        <svg xmlns="http://www.w3.org/2000/svg" class=" w-5 h-4 text-white" fill="currentColor" stroke="currentColor" viewBox="0 0 576 512">
                            <path d="M575.8 255.5c0 18-15 32.1-32 32.1l-32 0 .7 160.2c0 2.7-.2 5.4-.5 8.1l0 16.2c0 22.1-17.9 40-40 40l-16 0c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1L416 512l-24 0c-22.1 0-40-17.9-40-40l0-24 0-64c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32 14.3-32 32l0 64 0 24c0 22.1-17.9 40-40 40l-24 0-31.9 0c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2l-16 0c-22.1 0-40-17.9-40-40l0-112c0-.9 0-1.9 .1-2.8l0-69.7-32 0c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z" />
                        </svg> <span id="sidebar-text">Dashboard</span>
                    </li>
                </a>
                <!-- Team với menu con -->
                <li class="mb-4 menu-link" x-data="{ openSub: false }">
                    <button @click="openSub = !openSub" class="dropdown-btn flex items-center justtify-between p-2 w-full text-left hover:bg-blue-700 rounded-md">
                        <div class="flex items-center w-full space-x-2">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-4 text-white" fill="currentColor" stroke="currentColor" viewBox="0 0 576 512">
                                <path d="M575.8 255.5c0 18-15 32.1-32 32.1l-32 0 .7 160.2c0 2.7-.2 5.4-.5 8.1l0 16.2c0 22.1-17.9 40-40 40l-16 0c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1L416 512l-24 0c-22.1 0-40-17.9-40-40l0-24 0-64c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32 14.3-32 32l0 64 0 24c0 22.1-17.9 40-40 40l-24 0-31.9 0c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2l-16 0c-22.1 0-40-17.9-40-40l0-112c0-.9 0-1.9 .1-2.8l0-69.7-32 0c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z" />
                            </svg> <span id="sidebar-text">User</span>
                        </div>
                        <svg :class="{'rotate-90': openSub}" class="arrow w-5 h-5 transform transition-transform duration-300 text-white font-bold" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M9 5l7 7-7 7" />
                        </svg>
                    </button>
                    <ul class="dropdown hidden ml-6 mt-2">
                        <a href="{{ route('users.index') }}">
                            <li class="p-2 bg-gray-800 rounded-md mb-2">Member List</li>
                        </a>
                        <li class="p-2 bg-gray-800 rounded-md mb-2">Add Member</li>
                        <li class="p-2 bg-gray-800 rounded-md">Manage Roles</li>
                    </ul>
                </li>

                <!-- Projects với menu con -->
                <li class="mb-4" x-data="{ openSub: false }">
                    <button @click="openSub = !openSub" class="dropdown-btn flex items-center justtify-between p-2 w-full text-left hover:bg-blue-700 rounded-md">
                        <div class="flex items-center w-full space-x-2">
                            <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-4 text-white" fill="currentColor" stroke="currentColor" viewBox="0 0 576 512">
                                <path d="M575.8 255.5c0 18-15 32.1-32 32.1l-32 0 .7 160.2c0 2.7-.2 5.4-.5 8.1l0 16.2c0 22.1-17.9 40-40 40l-16 0c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1L416 512l-24 0c-22.1 0-40-17.9-40-40l0-24 0-64c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32 14.3-32 32l0 64 0 24c0 22.1-17.9 40-40 40l-24 0-31.9 0c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2l-16 0c-22.1 0-40-17.9-40-40l0-112c0-.9 0-1.9 .1-2.8l0-69.7-32 0c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z" />
                            </svg> <span id="sidebar-text">Quản lý thiết bị</span>
                        </div>
                        <svg :class="{'rotate-90': openSub}" class="arrow w-5 h-5 transform transition-transform duration-300 text-white font-bold" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M9 5l7 7-7 7" />
                        </svg>
                    </button>
                    <ul class="dropdown hidden ml-6 mt-2">
                        <a href="{{ route('QuanLyThietBi.index') }}">
                            <li class="p-2 bg-gray-800 rounded-md mb-2">Danh sách thiết bị</li>
                        </a>
                        <li class="p-2 bg-gray-800 rounded-md mb-2">iOS App</li>
                        <li class="p-2 bg-gray-800 rounded-md mb-2">Android App</li>
                        <li class="p-2 bg-gray-800 rounded-md">New Customer Portal</li>
                    </ul>
                </li>

                <li class="mb-4 flex items-center space-x-2 p-2 hover:bg-blue-700 rounded-md">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-4 text-white" fill="currentColor" stroke="currentColor" viewBox="0 0 576 512">
                        <path d="M575.8 255.5c0 18-15 32.1-32 32.1l-32 0 .7 160.2c0 2.7-.2 5.4-.5 8.1l0 16.2c0 22.1-17.9 40-40 40l-16 0c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1L416 512l-24 0c-22.1 0-40-17.9-40-40l0-24 0-64c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32 14.3-32 32l0 64 0 24c0 22.1-17.9 40-40 40l-24 0-31.9 0c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2l-16 0c-22.1 0-40-17.9-40-40l0-112c0-.9 0-1.9 .1-2.8l0-69.7-32 0c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z" />
                    </svg>
                    <span id="sidebar-text">Calendar</span>
                </li>
                <li class="mb-4 flex items-center space-x-2 p-2 hover:bg-blue-700 rounded-md">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-4 text-white" fill="currentColor" stroke="currentColor" viewBox="0 0 576 512">
                        <path d="M575.8 255.5c0 18-15 32.1-32 32.1l-32 0 .7 160.2c0 2.7-.2 5.4-.5 8.1l0 16.2c0 22.1-17.9 40-40 40l-16 0c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1L416 512l-24 0c-22.1 0-40-17.9-40-40l0-24 0-64c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32 14.3-32 32l0 64 0 24c0 22.1-17.9 40-40 40l-24 0-31.9 0c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2l-16 0c-22.1 0-40-17.9-40-40l0-112c0-.9 0-1.9 .1-2.8l0-69.7-32 0c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z" />
                    </svg>
                    <span id="sidebar-text">Documents</span>
                </li>
                <li class="mb-4 flex items-center space-x-2 p-2 hover:bg-blue-700 rounded-md">
                    <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-4 text-white" fill="currentColor" stroke="currentColor" viewBox="0 0 576 512">
                        <path d="M575.8 255.5c0 18-15 32.1-32 32.1l-32 0 .7 160.2c0 2.7-.2 5.4-.5 8.1l0 16.2c0 22.1-17.9 40-40 40l-16 0c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1L416 512l-24 0c-22.1 0-40-17.9-40-40l0-24 0-64c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32 14.3-32 32l0 64 0 24c0 22.1-17.9 40-40 40l-24 0-31.9 0c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2l-16 0c-22.1 0-40-17.9-40-40l0-112c0-.9 0-1.9 .1-2.8l0-69.7-32 0c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z" />
                    </svg>
                    <span id="sidebar-text">Reports</span>
                </li>
            </ul>
        </nav>
        <div class="mt-auto border-t border-gray-700 pt-4 hover:bg-blue-700 rounded-md">
            <button class="flex items-center space-x-2 w-full text-left p-2">
                <svg xmlns="http://www.w3.org/2000/svg" class="w-5 h-4 text-white" fill="currentColor" stroke="currentColor" viewBox="0 0 576 512">
                    <path d="M575.8 255.5c0 18-15 32.1-32 32.1l-32 0 .7 160.2c0 2.7-.2 5.4-.5 8.1l0 16.2c0 22.1-17.9 40-40 40l-16 0c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1L416 512l-24 0c-22.1 0-40-17.9-40-40l0-24 0-64c0-17.7-14.3-32-32-32l-64 0c-17.7 0-32 14.3-32 32l0 64 0 24c0 22.1-17.9 40-40 40l-24 0-31.9 0c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2l-16 0c-22.1 0-40-17.9-40-40l0-112c0-.9 0-1.9 .1-2.8l0-69.7-32 0c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z" />
                </svg>
                <span id="sidebar-text">Settings</span>
            </button>
        </div>
    </div>

    <!-- Main Content -->
    <div class="flex-1 flex flex-col">
        <header class="p-4 bg-white shadow-md flex items-center justify-between">
            <div class="relative group">
                <!-- Nút bấm hoặc icon -->
                <button onclick="toggleSidebar()" class="p-2 bg-gray-800 text-white rounded-md">☰</button>
                <!-- Tooltip -->
                <span class="whitespace-nowrap relative left-2 -translate-y-12 top-full mt-2 p-2 text-white text-[12px] 
                            bg-black rounded-lg opacity-0 group-hover:opacity-90 transition-opacity transition-all duration-300 shadow-lg z-20
                            before:absolute before:content-[''] before:w-3 before:h-3 before:bg-black before:rotate-45 
                            before:left-0 before:-translate-x-1/2 before:translate-y-4 before:z-0" id="state_tooltip_sidebar">Close sidebar
                </span>
            </div>
            <div class="relative w-1/3">
                <input type="text" placeholder="Search" class="border rounded-md p-2 pl-5 w-full" />
                <button type="button" class="absolute right-3 top-2 text-gray-500">🔍</button>
            </div> <x-dropdown align="right" width="48">
                <x-slot name="trigger">
                    <button class="inline-flex items-center px-3 border border-transparent text-sm leading-4 font-medium rounded-md text-black hover:text-gray-500 focus:outline-none transition ease-in-out duration-150">
                        <div class="flex items-center space-x-2">
                            <img class="h-8 w-8 rounded-full" src="{{ asset('images/user.png') }}" alt="{{ Auth::user()->name }}" />
                            <span>{{ Auth::user()->name }}</span>
                        </div>
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
        </header>
        <main id="main-content" class="flex-1 p-6 bg-gray-50 flex flex-col
                    justify-center border border-dashed
                    border-gray-300 overflow-y-auto 
                    [&::-webkit-scrollbar]:w-2
                    [&::-webkit-scrollbar-track]:rounded-full
                    [&::-webkit-scrollbar-track]:bg-gray-100
                    [&::-webkit-scrollbar-thumb]:rounded-full
                    [&::-webkit-scrollbar-thumb]:bg-gray-300
                    dark:[&::-webkit-scrollbar-track]:bg-neutral-700
                    dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500">
            {{ $slot }}
        </main>
    </div>
</div>
<script>
    document.querySelectorAll('.dropdown-btn').forEach(button => {
        button.addEventListener('click', () => {
            const dropdown = button.nextElementSibling;
            const arrow = button.querySelector('.dropdown-arrow');
            dropdown.classList.toggle('hidden');
        });
    });

    function toggleSidebar() {
        const sidebar = document.getElementById('sidebar');
        const textElements = document.querySelectorAll('#sidebar-text');
        const arrow = document.querySelectorAll('.arrow');
        const isExpanded = sidebar.classList.contains('w-64'); // Kiểm tra trạng thái hiện tại

        sidebar.classList.toggle('w-64');
        sidebar.classList.toggle('w-16');
        textElements.forEach(el => el.classList.toggle('hidden'));
        arrow.forEach(el => el.classList.toggle('hidden'));
        // State tooltip
        if(isExpanded)
        {
            sidebar.classList.remove('w-64');
            sidebar.classList.add('w-16');  
            document.getElementById("state_tooltip_sidebar").textContent="Open sidebar";
        }
        else
        {
            sidebar.classList.remove('w-16');
            sidebar.classList.add('w-64');  
            document.getElementById("state_tooltip_sidebar").textContent="Close sidebar";
        }

    }
    document.addEventListener('DOMContentLoaded', () => {
        const sidebar = document.getElementById('sidebar');
        const textElements = document.querySelectorAll('#sidebar-text');
        const arrow = document.querySelectorAll('.arrow');
        if (window.innerWidth < 768) {
            sidebar.classList.remove('w-64');
            sidebar.classList.add('w-16');
            document.getElementById("state_tooltip_sidebar").textContent="Open sidebar";
            textElements.forEach(el => el.classList.add('hidden'));
            arrow.forEach(el => el.classList.remove('hidden'));
        }
    });
    window.addEventListener('resize', () => {
        const sidebar = document.getElementById('sidebar');
        const textElements = document.querySelectorAll('#sidebar-text');
        const arrow = document.querySelectorAll('.arrow');
        if (window.innerWidth < 768) {
            sidebar.classList.remove('w-64');
            sidebar.classList.add('w-16');
            document.getElementById("state_tooltip_sidebar").textContent="Open sidebar";
            textElements.forEach(el => el.classList.add('hidden'));
            arrow.forEach(el => el.classList.remove('hidden'));
        } else {
            sidebar.classList.add('w-64');
            sidebar.classList.remove('w-16');
            textElements.forEach(el => el.classList.remove('hidden'));
        }
    });
</script>