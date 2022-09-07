<div class="login-popup tabs-elements" style="display: none">
    <div class="login-popup__close">
        <svg width="50" height="50" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
            <circle cx="25" cy="25" r="25" fill="#EDEFF7" fill-opacity="0.34"/>
            <rect x="19" y="20.4141" width="2" height="14" transform="rotate(-45 19 20.4141)" fill="#C2C6DC"/>
            <rect x="20.415" y="30.3135" width="2" height="14" transform="rotate(-135 20.415 30.3135)" fill="#C2C6DC"/>
        </svg>

    </div>
    <div class="login-popup__header tabs-elements">
        <div class="login-popup__tab tabs-nav-item">
            Log In
        </div>
        <div class="login-popup__tab tabs-nav-item">
            Sign Up
        </div>
    </div>
    <div class="login-popup__wrapper">
        <div class="tabs-content-item active">
            <form action="{{ route('login') }}" method="post" id="login_form" novalidate>
                <div class="form-header">
                    <div class="form-header-google">
                        <svg width="52" height="52" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="26" cy="26" r="26" fill="white"/>
                            <path d="M38.2569 23.5519H37.25V23.5H26V28.5H33.0644C32.0337 31.4106 29.2644 33.5 26 33.5C21.8581 33.5 18.5 30.1419 18.5 26C18.5 21.8581 21.8581 18.5 26 18.5C27.9119 18.5 29.6512 19.2212 30.9756 20.3994L34.5112 16.8637C32.2787 14.7831 29.2925 13.5 26 13.5C19.0969 13.5 13.5 19.0969 13.5 26C13.5 32.9031 19.0969 38.5 26 38.5C32.9031 38.5 38.5 32.9031 38.5 26C38.5 25.1619 38.4137 24.3437 38.2569 23.5519Z" fill="#FFC107"/>
                            <path d="M14.9413 20.1819L19.0481 23.1937C20.1594 20.4425 22.8506 18.5 26 18.5C27.9119 18.5 29.6513 19.2212 30.9756 20.3994L34.5113 16.8637C32.2788 14.7831 29.2925 13.5 26 13.5C21.1988 13.5 17.035 16.2106 14.9413 20.1819Z" fill="#FF3D00"/>
                            <path d="M26 38.4999C29.2288 38.4999 32.1625 37.2643 34.3806 35.2549L30.5119 31.9812C29.2147 32.9677 27.6297 33.5012 26 33.4999C22.7488 33.4999 19.9881 31.4268 18.9481 28.5337L14.8719 31.6743C16.9406 35.7224 21.1419 38.4999 26 38.4999Z" fill="#4CAF50"/>
                            <path d="M38.2569 23.5519H37.25V23.5H26V28.5H33.0644C32.5714 29.8853 31.6833 31.0957 30.51 31.9819L30.5119 31.9806L34.3806 35.2544C34.1069 35.5031 38.5 32.25 38.5 26C38.5 25.1619 38.4137 24.3438 38.2569 23.5519Z" fill="#1976D2"/>
                        </svg>
                        Continue with Goggle
                    </div>
                    <div class="title tub-login">
                        OR Log in with E-mail
                    </div>
                </div>
                @csrf
                <div class="group">
                    <label for="email">
                        <input name="email" type="email" id="email" placeholder="Введите E-mail">
                        <span class="validate"></span>
                    </label>
                    <label class="label-password" for="password">
                        <input name="password" type="password" id="password" placeholder="Пароль">
                        <span class="validate"></span>
                    </label>
                    <a class="recovery" href="">Forgot your password?</a>
                </div>
                <button type="submit" class="button-stroke"><span>Log In</span></button>
            </form>
        </div>
        <div class="tabs-content-item">
            <form action="{{ route('register') }}" method="post" id="login_form" novalidate>
                <div class="form-header">
                    <div class="form-header-google">
                        <svg width="52" height="52" viewBox="0 0 52 52" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="26" cy="26" r="26" fill="white"/>
                            <path d="M38.2569 23.5519H37.25V23.5H26V28.5H33.0644C32.0337 31.4106 29.2644 33.5 26 33.5C21.8581 33.5 18.5 30.1419 18.5 26C18.5 21.8581 21.8581 18.5 26 18.5C27.9119 18.5 29.6512 19.2212 30.9756 20.3994L34.5112 16.8637C32.2787 14.7831 29.2925 13.5 26 13.5C19.0969 13.5 13.5 19.0969 13.5 26C13.5 32.9031 19.0969 38.5 26 38.5C32.9031 38.5 38.5 32.9031 38.5 26C38.5 25.1619 38.4137 24.3437 38.2569 23.5519Z" fill="#FFC107"/>
                            <path d="M14.9413 20.1819L19.0481 23.1937C20.1594 20.4425 22.8506 18.5 26 18.5C27.9119 18.5 29.6513 19.2212 30.9756 20.3994L34.5113 16.8637C32.2788 14.7831 29.2925 13.5 26 13.5C21.1988 13.5 17.035 16.2106 14.9413 20.1819Z" fill="#FF3D00"/>
                            <path d="M26 38.4999C29.2288 38.4999 32.1625 37.2643 34.3806 35.2549L30.5119 31.9812C29.2147 32.9677 27.6297 33.5012 26 33.4999C22.7488 33.4999 19.9881 31.4268 18.9481 28.5337L14.8719 31.6743C16.9406 35.7224 21.1419 38.4999 26 38.4999Z" fill="#4CAF50"/>
                            <path d="M38.2569 23.5519H37.25V23.5H26V28.5H33.0644C32.5714 29.8853 31.6833 31.0957 30.51 31.9819L30.5119 31.9806L34.3806 35.2544C34.1069 35.5031 38.5 32.25 38.5 26C38.5 25.1619 38.4137 24.3438 38.2569 23.5519Z" fill="#1976D2"/>
                        </svg>
                        Sing up with Goggle
                    </div>
                    <div class="title tub-login">
                        Sign Up
                    </div>
                </div>
                @csrf
                <div class="group">
{{--                    <label for="name">--}}
{{--                        <input name="name" type="text" id="name" placeholder="Введите имя">--}}
{{--                        <span class="validate"></span>--}}
{{--                    </label>--}}
                    <label for="email">
                        <input name="email" type="email" id="email" placeholder="Введите E-mail">
                        <span class="validate"></span>
                    </label>
                    <label class="label-password" for="password">
                        <input name="password" type="password" id="password" placeholder="Пароль">
                        <span class="validate"></span>
                    </label>
                </div>
                <button type="submit" class="button-stroke"><span>Sign Up</span></button>
            </form>
        </div>
    </div>
</div>