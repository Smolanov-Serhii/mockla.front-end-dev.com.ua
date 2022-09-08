
<header class="header" id="header">
    <div class="header__container main-container">
        <div class="header__logo">
            <a href="{{ url('/') }}">
                <img src="{{ url('/') }}/img/header/logo.svg" alt="Logo">
            </a>
        </div>
        <div class="header__menu">
            <div class="header__search">
                <form action="{{ route('client.search') }}" method="get">
                    <input type="text" placeholder="Search mockups" name="query" value="{{ $query ?? '' }}" required>
                    <button>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M16.3447 16.3447C16.6376 16.0518 17.1124 16.0518 17.4053 16.3447L21.9053 20.8447C22.1982 21.1376 22.1982 21.6124 21.9053 21.9053C21.6124 22.1982 21.1376 22.1982 20.8447 21.9053L16.3447 17.4053C16.0518 17.1124 16.0518 16.6376 16.3447 16.3447Z" fill="#C2C6DC"/>
                            <path fill-rule="evenodd" clip-rule="evenodd" d="M11.25 4.875C7.72919 4.875 4.875 7.72919 4.875 11.25C4.875 14.7708 7.72919 17.625 11.25 17.625C14.7708 17.625 17.625 14.7708 17.625 11.25C17.625 7.72919 14.7708 4.875 11.25 4.875ZM3.375 11.25C3.375 6.90076 6.90076 3.375 11.25 3.375C15.5992 3.375 19.125 6.90076 19.125 11.25C19.125 15.5992 15.5992 19.125 11.25 19.125C6.90076 19.125 3.375 15.5992 3.375 11.25Z" fill="#C2C6DC"/>
                        </svg>
                    </button>
                </form>
            </div>
            <nav class="header__nav">
                <ul class="header__nav-list">
                    <li class="header__nav-item"><a class="header__nav-lnk" href="{{ url('/mockups') }}">Mockups</a></li>
                    <li class="header__nav-item"><a class="header__nav-lnk" href="{{ url('/pricing') }}">Pricing</a></li>
                    @auth
                        <li class="header__nav-account">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M12 3C13.1935 3 14.3381 3.47411 15.182 4.31802C16.0259 5.16193 16.5 6.30653 16.5 7.5C16.5 8.69347 16.0259 9.83807 15.182 10.682C14.3381 11.5259 13.1935 12 12 12C10.8065 12 9.66193 11.5259 8.81802 10.682C7.97411 9.83807 7.5 8.69347 7.5 7.5C7.5 6.30653 7.97411 5.16193 8.81802 4.31802C9.66193 3.47411 10.8065 3 12 3M12 14.25C16.9725 14.25 21 16.2637 21 18.75V21H3V18.75C3 16.2637 7.0275 14.25 12 14.25Z" fill="#00BBFF"/>
                            </svg>
                            <span class="name">{{Auth::user()->name}}</span>
                            <svg width="11" height="8" viewBox="0 0 11 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path d="M5.5 7.5L0.736861 0.75L10.2631 0.749999L5.5 7.5Z" fill="#C2C6DC"/>
                            </svg>
                            <div class="header__nav-account-all">
                                <div class="header__nav-account-item plan">
                                    <div class="plan-name">
                                        Basic plan
                                    </div>
                                    <div class="plan-date">
                                        25.02.2022
                                    </div>
                                </div>
                                <a href="{{ url('/cabinet') }}">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M11.8316 15.8097C11.8516 15.8341 11.8771 15.8539 11.9063 15.8675C11.9355 15.8811 11.9675 15.8881 12 15.8881C12.0325 15.8881 12.0645 15.8811 12.0937 15.8675C12.1229 15.8539 12.1484 15.8341 12.1684 15.8097L15.1631 12.1866C15.2727 12.0537 15.1738 11.8568 14.9947 11.8568H13.0134V3.20455C13.0134 3.09205 12.9171 3 12.7995 3H11.1952C11.0775 3 10.9813 3.09205 10.9813 3.20455V11.8543H9.00535C8.8262 11.8543 8.72727 12.0511 8.8369 12.1841L11.8316 15.8097ZM21.7861 14.9148H20.1818C20.0642 14.9148 19.9679 15.0068 19.9679 15.1193V19.0568H4.03209V15.1193C4.03209 15.0068 3.93583 14.9148 3.81818 14.9148H2.2139C2.09626 14.9148 2 15.0068 2 15.1193V20.1818C2 20.6344 2.38235 21 2.85561 21H21.1444C21.6176 21 22 20.6344 22 20.1818V15.1193C22 15.0068 21.9037 14.9148 21.7861 14.9148Z" fill="#C2C6DC"/>
                                    </svg>
                                    My Downloads
                                </a>
                                <a href="{{ url('/cabinet') }}">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M2 9V5C2 3.9 2.9 3 4 3H7.93C8.25941 3.0017 8.58331 3.08475 8.8729 3.24176C9.1625 3.39877 9.40882 3.62488 9.59 3.9L10.41 5.1C10.5912 5.37512 10.8375 5.60123 11.1271 5.75824C11.4167 5.91525 11.7406 5.9983 12.07 6H20C20.5304 6 21.0391 6.21071 21.4142 6.58579C21.7893 6.96086 22 7.46957 22 8V18C22 18.5304 21.7893 19.0391 21.4142 19.4142C21.0391 19.7893 20.5304 20 20 20H2" stroke="#C2C6DC" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M8 16L11 13L8 10" stroke="#C2C6DC" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                        <path d="M2 16V15C2 14.4696 2.21071 13.9609 2.58579 13.5858C2.96086 13.2107 3.46957 13 4 13H10" stroke="#C2C6DC" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
                                    </svg>
                                    My Drafts
                                </a>
                                <a href="{{ url('/cabinet') }}">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M4 21V20C4 16.6863 6.68629 14 10 14H14C17.3137 14 20 16.6863 20 20V21" stroke="#C2C6DC" stroke-width="2" stroke-linecap="round"/>
                                        <path d="M12 11C9.79086 11 8 9.20914 8 7C8 4.79086 9.79086 3 12 3C14.2091 3 16 4.79086 16 7C16 9.20914 14.2091 11 12 11Z" stroke="#C2C6DC" stroke-width="2" stroke-linecap="round"/>
                                    </svg>
                                    My Account
                                </a>
                                <a href="{{ url('/cabinet') }}">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M12.0004 4.55852C10.9079 3.55629 9.47776 3.00005 7.99349 3C7.20789 3.00082 6.4302 3.15661 5.70518 3.45842C4.98016 3.76023 4.32213 4.2021 3.76896 4.75859C1.40951 7.12237 1.41052 10.8196 3.77096 13.1734L11.123 20.5078C11.2935 20.8069 11.6224 21 12.0004 21C12.1557 20.9985 12.3084 20.9607 12.4463 20.8896C12.5842 20.8186 12.7035 20.7163 12.7946 20.5909L20.2299 13.1734C22.5904 10.8186 22.5904 7.12237 20.2279 4.75458C19.675 4.19912 19.0175 3.75815 18.2932 3.45704C17.5689 3.15592 16.7921 3.0006 16.0074 3C14.5232 3.00024 13.0931 3.55646 12.0004 4.55852ZM18.81 6.16906C20.3773 7.74058 20.3783 10.1954 18.812 11.7589L12.0004 18.5542L5.18883 11.7589C3.62256 10.1954 3.62356 7.74058 5.18683 6.17306C5.94891 5.41681 6.94563 5.00067 7.99349 5.00067C9.04136 5.00067 10.0341 5.41681 10.7901 6.17106L11.2915 6.67122C11.3845 6.7642 11.4951 6.83796 11.6167 6.88829C11.7383 6.93862 11.8687 6.96452 12.0004 6.96452C12.1321 6.96452 12.2625 6.93862 12.3842 6.88829C12.5058 6.83796 12.6163 6.7642 12.7094 6.67122L13.2107 6.17106C14.7269 4.66155 17.2959 4.66556 18.81 6.16906Z" fill="#C2C6DC"/>
                                    </svg>
                                    My Favorites
                                </a>
                                <a href="{{ url('/logout') }}">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M9.75 4V6.28571H18.75V17.7143H9.75V20H21V4H9.75ZM7.5 8.57143L3 12L7.5 15.4286V13.1429H16.5V10.8571H7.5V8.57143Z" fill="#C2C6DC"/>
                                    </svg>
                                    Log out
                                </a>
                            </div>
                        </li>
                    @else
                        <li class="header__nav-item js-try"><div class="header__nav-lnk">Log In</div></li>
                    @endauth
                </ul>
            </nav>
            @auth

            @else
                <div class="header__try button-stroke">
                    <span>Try it Free</span>
                </div>
            @endauth
        </div>
    </div>
</header>

