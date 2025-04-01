<div class="flex h-screen bg-gray-100">
    <!-- Sidebar -->
    <div id="sidebar" class="w-64 bg-gray-900 text-white flex flex-col py-4 pl-2 transition-all duration-300 ease-in-out">
        <div class="text-[18px] font-bold mb-6 flex items-center">
            <a href="{{ route('dashboard') }}" class="flex items-center py-4 pr-7 pl-2 transition-colors border-b border-white">
                <x-application-logo-6 class="fill-current text-gray-500" />
                <span id="sidebar-text" class="inline-block pl-2 font-semibold">QUẢN LÝ THIẾT BỊ</span>
            </a>
        </div>
        <nav class="flex-1 overflow-y-auto pr-2
                    [&::-webkit-scrollbar]:w-2
                    [&::-webkit-scrollbar-track]:rounded-full
                    [&::-webkit-scrollbar-track]:bg-gray-100
                    [&::-webkit-scrollbar-thumb]:rounded-full
                    [&::-webkit-scrollbar-thumb]:bg-gray-300
                    dark:[&::-webkit-scrollbar-track]:bg-neutral-700
                    dark:[&::-webkit-scrollbar-thumb]:bg-neutral-500">
            <ul>
                <li class="mb-4 menu-link" x-data="{ openSub: {{ request()->routeIs('khuvuc.*') || request()->routeIs('loaiphong.*') || request()->routeIs('vitri.*') ? 'true' : 'false' }} }">
                    <button @click="openSub = !openSub" class="dropdown-btn flex items-center justify-between p-2 w-full text-left hover:bg-blue-700 rounded-md">
                        <div class="flex items-center space-x-2">
                            <svg xmlns="http://www.w3.org/2000/svg" height="22px" viewBox="0 -960 960 960" width="24px" fill="currentColor">
                                <path d="M320-600v-80h320v80H320ZM280-40q-33 0-56.5-23.5T200-120v-720q0-33 23.5-56.5T280-920h400q33 0 56.5 23.5T760-840v720q0 33-23.5 56.5T680-40H280Zm0-120v40h400v-40H280Zm0-80h400v-480H280v480Zm0-560h400v-40H280v40Zm0 0v-40 40Zm0 640v40-40Z" />
                            </svg> <span id="sidebar-text">Quản lý đơn vị</span>
                        </div>
                        <svg :class="{'rotate-90': openSub}" class="arrow w-5 h-5 transform transition-transform duration-300 text-white font-bold" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M9 5l7 7-7 7" />
                        </svg>
                    </button>
                    <ul :class="{'hidden': !openSub}" class="dropdown ml-6 mt-2">
                        <a href="{{ route('khuvuc.index') }}">
                            <li class="ml-2 p-2 bg-gray-800 rounded-md mb-2 {{ request()->routeIs('khuvuc.*') ? 'bg-blue-700' : '' }}">Khu vực</li>
                        </a>
                        <a href="{{ route('loaiphong.index') }}">
                            <li class="ml-2 p-2 bg-gray-800 rounded-md mb-2 {{ request()->routeIs('loaiphong.*') ? 'bg-blue-700' : '' }}">Loại phòng</li>
                        </a>
                        <a href="{{ route('vitri.index') }}">
                            <li class="ml-2 p-2 bg-gray-800 rounded-md mb-2 {{ request()->routeIs('vitri.*') ? 'bg-blue-700' : '' }}">Vị trí</li>
                        </a>
                    </ul>
                </li>
                <!-- Team với menu con -->
                <li class="mb-4 menu-link" x-data="{ openSub: {{ request()->routeIs('users.*') ? 'true' : 'false' }} }">
                    <button @click="openSub = !openSub" class="dropdown-btn flex items-center justify-between p-2 w-full text-left hover:bg-blue-700 rounded-md">
                        <div class="flex items-center space-x-2">
                            <svg xmlns="http://www.w3.org/2000/svg" height="24px" width="24px" fill="currentColor" stroke="currentColor" viewBox="0 -960 960 960">
                                <path d="M400-480q-66 0-113-47t-47-113q0-66 47-113t113-47q66 0 113 47t47 113q0 66-47 113t-113 47ZM80-160v-112q0-33 17-62t47-44q51-26 115-44t141-18h14q6 0 12 2-8 18-13.5 37.5T404-360h-4q-71 0-127.5 18T180-306q-9 5-14.5 14t-5.5 20v32h252q6 21 16 41.5t22 38.5H80Zm560 40-12-60q-12-5-22.5-10.5T584-204l-58 18-40-68 46-40q-2-14-2-26t2-26l-46-40 40-68 58 18q11-8 21.5-13.5T628-460l12-60h80l12 60q12 5 22.5 11t21.5 15l58-20 40 70-46 40q2 12 2 25t-2 25l46 40-40 68-58-18q-11 8-21.5 13.5T732-180l-12 60h-80Zm40-120q33 0 56.5-23.5T760-320q0-33-23.5-56.5T680-400q-33 0-56.5 23.5T600-320q0 33 23.5 56.5T680-240ZM400-560q33 0 56.5-23.5T480-640q0-33-23.5-56.5T400-720q-33 0-56.5 23.5T320-640q0 33 23.5 56.5T400-560Zm0-80Zm12 400Z" />
                            </svg>
                            <span id="sidebar-text">Quản lý tài khoản</span>
                        </div>
                        <svg :class="{'rotate-90': openSub}" class="arrow w-5 h-5 transform transition-transform duration-300 text-white font-bold" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M9 5l7 7-7 7" />
                        </svg>
                    </button>
                    <ul :class="{'hidden': !openSub}" class="dropdown ml-6 mt-2">
                        <a href="{{ route('users.index') }}">
                            <li class="ml-2 p-2 bg-gray-800 rounded-md mb-2 {{ request()->routeIs('users.*') ? 'bg-blue-700' : '' }}">Danh sách người dùng</li>
                        </a>
                        <li class="ml-2 p-2 bg-gray-800 rounded-md mb-2">Quản lý vai trò</li>
                    </ul>
                </li>

                <!-- Projects với menu con -->
                <li class="mb-4" x-data="{ openSub: {{ request()->routeIs('QuanLyThietBi.*') ? 'true' : 'false' }} }">
                    <button @click="openSub = !openSub" class="dropdown-btn flex items-center justify-between p-2 w-full text-left hover:bg-blue-700 rounded-md">
                        <div class="flex items-center space-x-2">
                            <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="currentColor">
                                <path d="M80-160v-120h80v-440q0-33 23.5-56.5T240-800h600v80H240v440h240v120H80Zm520 0q-17 0-28.5-11.5T560-200v-400q0-17 11.5-28.5T600-640h240q17 0 28.5 11.5T880-600v400q0 17-11.5 28.5T840-160H600Zm40-120h160v-280H640v280Zm0 0h160-160Z" />
                            </svg><span id="sidebar-text">Quản lý thiết bị</span>
                        </div>
                        <svg :class="{'rotate-90': openSub}" class="arrow w-5 h-5 transform transition-transform duration-300 text-white font-bold" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                d="M9 5l7 7-7 7" />
                        </svg>
                    </button>
                    <ul :class="{'hidden': !openSub}" class="dropdown ml-6 mt-2">
                        <a href="{{ route('loaithietbi.index') }}">
                            <li class="ml-2 p-2 bg-gray-800 rounded-md mb-2 {{ request()->routeIs('QuanLyThietBi.*') ? 'bg-blue-700' : '' }}">Loại thiết bị</li>
                        </a>
                    </ul>
                    <ul :class="{'hidden': !openSub}" class="dropdown ml-6 mt-2">
                        <a href="{{ route('thietbi.index') }}">
                            <li class="ml-2 p-2 bg-gray-800 rounded-md mb-2 {{ request()->routeIs('QuanLyThietBi.*') ? 'bg-blue-700' : '' }}">Thiết bị</li>
                        </a>
                    </ul>
                </li>

                <li class="mb-4 flex items-center space-x-2 p-2 hover:bg-blue-700 rounded-md">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="currentColor">
                        <path d="M160-120v-640q0-33 23.5-56.5T240-840h480q33 0 56.5 23.5T800-760v640h-80v-80H240v80h-80Zm80-400h200v-240H240v240Zm280-160h200v-80H520v80Zm0 160h200v-80H520v80ZM400-320h160v-80H400v80ZM240-440v160h480v-160H240Zm0 0v160-160Z" />
                    </svg>
                    <span id="sidebar-text">Quản lý nội thất</span>
                </li>
                <li class="mb-4 flex items-center space-x-2 p-2 hover:bg-blue-700 rounded-md">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="currentColor">
                        <path d="M480-120 200-272v-240L40-600l440-240 440 240v320h-80v-276l-80 44v240L480-120Zm0-332 274-148-274-148-274 148 274 148Zm0 241 200-108v-151L480-360 280-470v151l200 108Zm0-241Zm0 90Zm0 0Z" />
                    </svg>
                    <span id="sidebar-text">Quản lý học kỳ</span>
                </li>
                <li class="mb-4 flex items-center space-x-2 p-2 hover:bg-blue-700 rounded-md">
                    <svg xmlns="http://www.w3.org/2000/svg" height="24px" viewBox="0 -960 960 960" width="24px" fill="currentColor">
                        <path d="M320-240h320v-80H320v80Zm0-160h320v-80H320v80ZM240-80q-33 0-56.5-23.5T160-160v-640q0-33 23.5-56.5T240-880h320l240 240v480q0 33-23.5 56.5T720-80H240Zm280-520v-200H240v640h480v-440H520ZM240-800v200-200 640-640Z" />
                    </svg>
                    <span id="sidebar-text">Quản lý biểu mẫu</span>
                </li>
            </ul>
        </nav>
        <div class="mt-auto border border-gray-700 py-3  hover:bg-blue-700 rounded-md">
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
                            bg-black rounded-lg opacity-0 group-hover:opacity-90 transition-all duration-300 shadow-lg z-20
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
                            {{ __('Đăng xuất') }}
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
            @yield('main')
        </main>
        @include('layouts.footer')
    </div>
</div>
<script>
    // Khởi tạo trạng thái sidebar khi trang load
    document.addEventListener('DOMContentLoaded', () => {
        const sidebar = document.getElementById('sidebar');
        const textElements = document.querySelectorAll('#sidebar-text');
        const arrow = document.querySelectorAll('.arrow');
        const isExpanded = getSidebarState();

        if (window.innerWidth < 768 || !isExpanded) {
            sidebar.classList.remove('w-64');
            sidebar.classList.add('w-14');
            document.getElementById("state_tooltip_sidebar").textContent = "Open sidebar";
            textElements.forEach(el => el.classList.add('hidden'));
            arrow.forEach(el => el.classList.remove('hidden'));
        } else {
            sidebar.classList.add('w-64');
            sidebar.classList.remove('w-14');
            textElements.forEach(el => el.classList.remove('hidden'));
            arrow.forEach(el => el.classList.add('hidden'));
        }
    });

    function toggleSidebar() {
        const sidebar = document.getElementById('sidebar');
        const textElements = document.querySelectorAll('#sidebar-text');
        const arrow = document.querySelectorAll('.arrow');
        const isExpanded = sidebar.classList.contains('w-64');

        if (isExpanded) {
            sidebar.classList.remove('w-64');
            sidebar.classList.add('w-14');
            document.getElementById("state_tooltip_sidebar").textContent = "Open sidebar";
            textElements.forEach(el => el.classList.add('hidden'));
            arrow.forEach(el => el.classList.remove('hidden'));
            saveSidebarState(false);
        } else {
            sidebar.classList.remove('w-14');
            sidebar.classList.add('w-64');
            document.getElementById("state_tooltip_sidebar").textContent = "Close sidebar";
            textElements.forEach(el => el.classList.remove('hidden'));
            arrow.forEach(el => el.classList.add('hidden'));
            saveSidebarState(true);
        }
    }

    // Xử lý resize window
    window.addEventListener('resize', () => {
        const sidebar = document.getElementById('sidebar');
        const textElements = document.querySelectorAll('#sidebar-text');
        const arrow = document.querySelectorAll('.arrow');

        if (window.innerWidth < 768) {
            sidebar.classList.remove('w-64');
            sidebar.classList.add('w-14');
            document.getElementById("state_tooltip_sidebar").textContent = "Open sidebar";
            textElements.forEach(el => el.classList.add('hidden'));
            arrow.forEach(el => el.classList.remove('hidden'));
            saveSidebarState(false);
        } else {
            const isExpanded = getSidebarState();
            if (isExpanded) {
                sidebar.classList.add('w-64');
                sidebar.classList.remove('w-14');
                textElements.forEach(el => el.classList.remove('hidden'));
                arrow.forEach(el => el.classList.add('hidden'));
            }
        }
    });
</script>