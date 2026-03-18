@php
use Illuminate\Support\Str;
@endphp
<header class="header">
    <div class="container">
        <div class="header-main">
            <header>
                <div class="content">
                    <div class="logo">
                        <a href="/">
                            <img srcset="{{ asset('frontend') }}/images/FPT_Polytechnic.png 2.5x" alt="">
                        </a>
                    </div>

                    <div class="navbar">
                        <nav>
                            <ul class="navbar-wrap">
                                <!-- <li class="nav-item-group">
                                    <a href="javascript:void(0)" class="link_nav">Công nghệ thông tin</a>
                                </li>
                                <li class="nav-item-group">
                                    <a href="javascript:void(0)" class="link_nav">Ứng dụng phần mềm</a>
                                </li> -->
                                @foreach ($menus as $mainMajor)
                                @if (count($mainMajor->navSubMajors) > 0)
                                <li class="nav-item-group dropdown-menu">
                                    <a href="javascript:void(0)" class="link_nav">{{ $mainMajor->name }}</a>
                                    <ul class="dropdown-menu-item">
                                        @foreach ($mainMajor->navSubMajors as $item)
                                        <li>
                                            <a href="{{ route('list-product-by-major.product', ['slug' => Str::slug($item->name . '-m' . $item->id)]) }}">{{ $item->name }}</a>
                                        </li>
                                        @endforeach
                                    </ul>
                                    <i class="fas fa-chevron-down"></i>
                                </li>
                                @else
                                <li class="nav-item-group">
                                    <a href="javascript:void(0)" class="link_nav">{{ $mainMajor->name }}</a>
                                </li>
                                @endif
                                @endforeach
                            </ul>
                        </nav>
                    </div>
                    <div class="search">
                        <button class="icon__search">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                        </svg>
                        </button>
                        <!-- <form action="{{ route('search-client') }}">
                            <button class="icon__search"><i class="fas fa-search"></i></button>
                            <input type="text" class="search__input" name="key" id="search_header" placeholder="Tìm kiếm...">
                            <input type="hidden" id="route_ajax_search" value="{{ route('ajax-search-product') }}">
                            <div class="box__search">
                                <ul>
                                </ul>
                            </div>
                        </form> -->
                    </div>
                    <div class="btn-account">
                        @if (Auth::check())
                        <div class="dropdown">
                            <a class="rounded-circle" href="#" role="button" id="dropdownUser" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <div class="avatar">
                                    <img alt="avatar" src="{{ Auth::user()->avatar }}" class="rounded-circle">
                                </div>
                            </a>
                            <div class="dropdown-menu pb-2" aria-labelledby="dropdownUser">
                                <div class="user">
                                    <div class="avatar">
                                        <img alt="avatar" src="{{ Auth::user()->avatar }}" class="rounded-circle">
                                    </div>
                                    <div class="name-user">
                                        <h5>{{ Auth::user()->name }}</h5>
                                        <p>{{ Auth::user()->email }}</p>
                                    </div>
                                </div>
                                <div class="btn-logout">
                                    <a href="/logout">
                                        <i class="fas fa-sign-out-alt"></i>
                                        Sign Out
                                    </a>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        @else
                        <div class="sign-in">
                            <a href="/login">Đăng nhập</a>
                        </div>
                        @endif
                    </div>
                </div>
            </header>

        </div>
        <div class="header-mobile">
            <div class="container">
                <div class="nav-mobile">
                    <div class="logo">
                        <a href="/">
                            <img srcset="{{ asset('frontend') }}/images/FPT_Polytechnic.png  2.5x" alt="">
                        </a>
                    </div>
                    <div class="group-btn">
                        @if (Auth::check())
                        <div class="dropdown">
                            <a class="rounded-circle" href="#" role="button" id="dropdownUser" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <div class="avatar">
                                    <img alt="avatar" src="{{ Auth::user()->avatar }}" class="rounded-circle">
                                </div>
                            </a>
                            <div class="dropdown-menu pb-2" aria-labelledby="dropdownUser">
                                <div class="user">
                                    <div class="avatar">
                                        <img alt="avatar" src="{{ Auth::user()->avatar }}" class="rounded-circle">
                                    </div>
                                    <div class="name-user">
                                        <h5>{{ Auth::user()->name }}</h5>
                                        <p>{{ Auth::user()->email }}</p>
                                    </div>
                                </div>
                                <div class="btn-logout">
                                    <a href="/logout">
                                        <i class="fas fa-sign-out-alt"></i>
                                        Sign Out
                                    </a>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        @endif
                        <label for="check" class="navbar-main">
                            <i class="fas fa-bars"></i>
                        </label>
                    </div>

                    <div class="overlay"></div>
                    <div class="navbar-mobile">
                        <span class="close-mobile">
                            <i class="fas fa-times"></i>
                        </span>
                        <form action="{{ route('search-client') }}">
                            <div class="search-mobile">
                                <button><i class="fas fa-search"></i></button>
                                <input type="text" name="key" id="" placeholder="Tìm kiếm theo tên...">
                            </div>
                        </form>
                        <ul class="navbar-mobile-warp">
                            <li>
                                <div class="link-menu">
                                    <a href="/">Trang chủ</a>
                                </div>
                            </li>
                            @foreach ($menus as $mainMajor)
                            @if (count($mainMajor->navSubMajors) > 0)
                            <li class="dropdown-menu">
                                <div class="link-menu btn-dropdown">
                                    <a href="javascript:void(0)">{{ $mainMajor->name }}</a>
                                    <i class="fas fa-plus"></i>
                                </div>
                                <ul class="dropdown-menu-item">
                                    @foreach ($mainMajor->navSubMajors as $item)
                                    <li>
                                        <a href="{{ route('list-product-by-major.product', ['slug' => Str::slug($item->name . '-m' . $item->id)]) }}">{{ $item->name }}</a>
                                    </li>
                                    @endforeach
                                </ul>
                            </li>
                            @else
                            <li>
                                <div class="link-menu">
                                    <a href="javascript:void(0)">{{ $mainMajor->name }}</a>
                                </div>
                            </li>
                            @endif
                            @endforeach
                            @if (!Auth::check())
                            <li class="bd-top">
                                <div class="link-menu">
                                    <a href="/login">
                                        Đăng nhập
                                    </a>
                                </div>
                            </li>
                            @endif
                            @if (Auth::check())
                            <li class="bd-top">
                                <div class="link-menu">
                                    <a href="/logout">
                                        Đăng xuất
                                    </a>
                                </div>
                            </li>
                            @endif
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
