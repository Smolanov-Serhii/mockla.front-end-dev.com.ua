@php
    $module = \App\Models\Module::where('name', 'mockups')
        ->with(['taxonomies', 'items.taxonomy_items'])
        ->first();


    $grouped_existed_taxonomy_items = \App\Models\TaxonomyItem::whereHas('module_items', function (\Illuminate\Database\Eloquent\Builder $query) use ($module) {
        $query->whereIn('id', $module['items']->pluck('id'));
    })->with('taxonomy')->get()->groupBy('taxonomy_id');

    $items = $module->items()->paginate(16);



@endphp
{{--dd($module->taxonomies);--}}
<section class="mockups-page">
    <div class="mockups-page__container main-container">
        <div class="mockups-page__header">
            <form
                    class="category__search"
                    action="{{ route('client.module_items.filter') }}"
                    id="courses_filter"
                    method="get">

                <input type="hidden" name="module" value="mockups">
                <input type="hidden" name="category-search-text" id="category-search-text" placeholder="Поиск">
{{--                <button type="submit" class="send-button green-button" id="search">Найти</button>--}}
{{--                <button type="reset" class="clear-button green-button" id="reset_button">Очистить</button>--}}
            </form>
        </div>
        <aside class="mockups-page__aside">
            <div class="mockups-page__aside-header">
                <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M23.75 11.2499C22.9763 11.2521 22.2222 11.4935 21.5912 11.9411C20.9601 12.3886 20.4829 13.0205 20.225 13.7499H3.75C3.41848 13.7499 3.10054 13.8816 2.86612 14.116C2.6317 14.3504 2.5 14.6684 2.5 14.9999C2.5 15.3314 2.6317 15.6494 2.86612 15.8838C3.10054 16.1182 3.41848 16.2499 3.75 16.2499H20.225C20.4543 16.8985 20.8576 17.4715 21.3908 17.9062C21.924 18.341 22.5665 18.6206 23.248 18.7147C23.9294 18.8087 24.6237 18.7135 25.2546 18.4394C25.8856 18.1653 26.429 17.7229 26.8254 17.1606C27.2218 16.5984 27.4559 15.9379 27.5021 15.2515C27.5482 14.5651 27.4047 13.8793 27.0872 13.269C26.7696 12.6587 26.2903 12.1475 25.7017 11.7914C25.1132 11.4353 24.4379 11.248 23.75 11.2499ZM23.75 16.2499C23.5028 16.2499 23.2611 16.1766 23.0555 16.0392C22.85 15.9019 22.6898 15.7067 22.5951 15.4782C22.5005 15.2498 22.4758 14.9985 22.524 14.756C22.5723 14.5136 22.6913 14.2908 22.8661 14.116C23.0409 13.9412 23.2637 13.8221 23.5061 13.7739C23.7486 13.7257 23.9999 13.7504 24.2284 13.845C24.4568 13.9397 24.652 14.0999 24.7893 14.3054C24.9267 14.511 25 14.7527 25 14.9999C25 15.3314 24.8683 15.6494 24.6339 15.8838C24.3995 16.1182 24.0815 16.2499 23.75 16.2499ZM3.75 8.74989H5.225C5.48776 9.47383 5.96704 10.0993 6.59771 10.5413C7.22838 10.9834 7.97985 11.2205 8.75 11.2205C9.52015 11.2205 10.2716 10.9834 10.9023 10.5413C11.533 10.0993 12.0122 9.47383 12.275 8.74989H26.25C26.5815 8.74989 26.8995 8.6182 27.1339 8.38378C27.3683 8.14936 27.5 7.83141 27.5 7.49989C27.5 7.16837 27.3683 6.85043 27.1339 6.61601C26.8995 6.38159 26.5815 6.24989 26.25 6.24989H12.275C12.0122 5.52595 11.533 4.90047 10.9023 4.45844C10.2716 4.01642 9.52015 3.7793 8.75 3.7793C7.97985 3.7793 7.22838 4.01642 6.59771 4.45844C5.96704 4.90047 5.48776 5.52595 5.225 6.24989H3.75C3.41848 6.24989 3.10054 6.38159 2.86612 6.61601C2.6317 6.85043 2.5 7.16837 2.5 7.49989C2.5 7.83141 2.6317 8.14936 2.86612 8.38378C3.10054 8.6182 3.41848 8.74989 3.75 8.74989ZM8.75 6.24989C8.99723 6.24989 9.2389 6.3232 9.44446 6.46056C9.65002 6.59791 9.81024 6.79313 9.90485 7.02154C9.99946 7.24995 10.0242 7.50128 9.97598 7.74376C9.92775 7.98623 9.8087 8.20896 9.63388 8.38378C9.45907 8.55859 9.23634 8.67764 8.99386 8.72587C8.75139 8.77411 8.50005 8.74935 8.27165 8.65474C8.04324 8.56013 7.84801 8.39992 7.71066 8.19436C7.57331 7.98879 7.5 7.74712 7.5 7.49989C7.5 7.16837 7.6317 6.85043 7.86612 6.61601C8.10054 6.38159 8.41848 6.24989 8.75 6.24989ZM26.25 21.2499H17.275C17.0122 20.526 16.533 19.9005 15.9023 19.4584C15.2716 19.0164 14.5201 18.7793 13.75 18.7793C12.9799 18.7793 12.2284 19.0164 11.5977 19.4584C10.967 19.9005 10.4878 20.526 10.225 21.2499H3.75C3.41848 21.2499 3.10054 21.3816 2.86612 21.616C2.6317 21.8504 2.5 22.1684 2.5 22.4999C2.5 22.8314 2.6317 23.1494 2.86612 23.3838C3.10054 23.6182 3.41848 23.7499 3.75 23.7499H10.225C10.4878 24.4738 10.967 25.0993 11.5977 25.5413C12.2284 25.9834 12.9799 26.2205 13.75 26.2205C14.5201 26.2205 15.2716 25.9834 15.9023 25.5413C16.533 25.0993 17.0122 24.4738 17.275 23.7499H26.25C26.5815 23.7499 26.8995 23.6182 27.1339 23.3838C27.3683 23.1494 27.5 22.8314 27.5 22.4999C27.5 22.1684 27.3683 21.8504 27.1339 21.616C26.8995 21.3816 26.5815 21.2499 26.25 21.2499ZM13.75 23.7499C13.5028 23.7499 13.2611 23.6766 13.0555 23.5392C12.85 23.4019 12.6898 23.2067 12.5951 22.9782C12.5005 22.7498 12.4758 22.4985 12.524 22.256C12.5722 22.0136 12.6913 21.7908 12.8661 21.616C13.0409 21.4412 13.2637 21.3221 13.5061 21.2739C13.7486 21.2257 13.9999 21.2504 14.2284 21.345C14.4568 21.4397 14.652 21.5999 14.7893 21.8054C14.9267 22.011 15 22.2527 15 22.4999C15 22.8314 14.8683 23.1494 14.6339 23.3838C14.3995 23.6182 14.0815 23.7499 13.75 23.7499Z" fill="#2E3A87"/>
                </svg>
                <span>FILTERS</span>
            </div>
            @foreach($module['taxonomies'] as $taxonomy)
                @isset($grouped_existed_taxonomy_items[$taxonomy->id])
                    <div class="mockups-page__group">
                        <h4 class="mockups-page__group-title">
                            {{ $taxonomy->name }}
                            <span class="line"></span>
                        </h4>
                        @foreach($grouped_existed_taxonomy_items[$taxonomy->id] as $taxonomy_item)
                            <label
                                    class="mockups-page__group-item"
                                    data-category="category-{{ $loop->parent->iteration }}_{{ $loop->iteration }}">
                                <input
                                        type="checkbox"
                                        class="category__group-input"
{{--                                                                                value="{{ $taxonomy_item->id }}"--}}
                                        name="taxonomy_item[{{ $taxonomy_item->id }}]"
                                        form="courses_filter"
                                >
                                <span>{{ $taxonomy_item->name }}</span>
                            </label>
                        @endforeach
                    </div>
                @endif
            @endforeach


        </aside>
        <div class="mockups-page__content">
            <div class="mockups-page__sort">
                <div class="load-img button-blue">
                    <svg width="26" height="26" viewBox="0 0 26 26" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M23.111 2.88892H2.88878C2.50569 2.88892 2.13829 3.0411 1.8674 3.31198C1.59652 3.58287 1.44434 3.95027 1.44434 4.33336V21.6667C1.44434 22.0498 1.59652 22.4172 1.8674 22.6881C2.13829 22.959 2.50569 23.1111 2.88878 23.1111H23.111C23.4941 23.1111 23.8615 22.959 24.1324 22.6881C24.4033 22.4172 24.5554 22.0498 24.5554 21.6667V4.33336C24.5554 3.95027 24.4033 3.58287 24.1324 3.31198C23.8615 3.0411 23.4941 2.88892 23.111 2.88892ZM6.44211 5.7778C6.87064 5.7778 7.28954 5.90488 7.64585 6.14295C8.00216 6.38103 8.27986 6.71942 8.44385 7.11532C8.60784 7.51123 8.65075 7.94688 8.56715 8.36717C8.48355 8.78746 8.27719 9.17352 7.97418 9.47654C7.67116 9.77955 7.2851 9.98591 6.86481 10.0695C6.44452 10.1531 6.00887 10.1102 5.61297 9.94621C5.21706 9.78222 4.87867 9.50451 4.6406 9.14821C4.40252 8.7919 4.27545 8.373 4.27545 7.94447C4.27545 7.36984 4.50372 6.81874 4.91005 6.41241C5.31638 6.00608 5.86748 5.7778 6.44211 5.7778ZM4.33322 19.5V16.5389L8.66656 12.1478C8.80188 12.0133 8.98492 11.9378 9.17572 11.9378C9.36653 11.9378 9.54957 12.0133 9.68489 12.1478L11.5554 13.975L6.00878 19.5H4.33322ZM21.6666 19.5H8.05267L12.5521 15.0006L16.4521 11.1006C16.5874 10.9661 16.7705 10.8906 16.9613 10.8906C17.1521 10.8906 17.3351 10.9661 17.4704 11.1006L21.6666 15.2967V19.5Z" fill="white"/>
                    </svg>
                    <span>Upload image</span>
                </div>
                <div class="mockups-page__sorted">
                    <span>Sort by</span>
                    <select class="selectrik">
                        <option>Newest</option>
                        <option>Older</option>
                    </select>
                </div>
            </div>
            <div class="mockups-page__prews">
                <div class="mockups-page__prew active">
                    <img src="{{ url('/') }}/img/templates/mockups/1.jpg">
                    <div class="delete">
                        <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="15" cy="15" r="15" fill="#1972A4"/>
                            <path d="M14.9998 6.42847C15.7328 6.42847 16.4378 6.71021 16.9689 7.21541C17.5001 7.72062 17.8167 8.41064 17.8534 9.14275L17.8569 9.28561H21.4284C21.6104 9.28581 21.7855 9.35552 21.9179 9.4805C22.0503 9.60548 22.13 9.77629 22.1406 9.95803C22.1513 10.1398 22.0922 10.3187 21.9753 10.4583C21.8585 10.598 21.6927 10.6877 21.5119 10.7092L21.4284 10.7142H20.8219L19.9791 21.1092C19.9247 21.7799 19.6198 22.4057 19.1251 22.8619C18.6304 23.3181 17.982 23.5714 17.3091 23.5713H12.6905C12.0175 23.5714 11.3692 23.3181 10.8745 22.8619C10.3798 22.4057 10.0749 21.7799 10.0205 21.1092L9.17693 10.7142H8.57122C8.39627 10.7142 8.22741 10.6499 8.09667 10.5337C7.96593 10.4174 7.8824 10.2572 7.86193 10.0835L7.85693 9.9999C7.85696 9.82494 7.92119 9.65608 8.03744 9.52534C8.1537 9.3946 8.3139 9.31108 8.48765 9.29061L8.57122 9.28561H12.1426C12.1426 8.52785 12.4437 7.80112 12.9795 7.2653C13.5153 6.72949 14.242 6.42847 14.9998 6.42847V6.42847ZM13.3926 13.0356C13.2632 13.0356 13.1381 13.0825 13.0406 13.1676C12.943 13.2527 12.8795 13.3702 12.8619 13.4985L12.8569 13.5713V19.2856L12.8619 19.3585C12.8796 19.4867 12.943 19.6042 13.0406 19.6892C13.1382 19.7743 13.2632 19.8212 13.3926 19.8212C13.5221 19.8212 13.6471 19.7743 13.7447 19.6892C13.8423 19.6042 13.9057 19.4867 13.9234 19.3585L13.9284 19.2856V13.5713L13.9234 13.4985C13.9058 13.3702 13.8423 13.2527 13.7447 13.1676C13.6472 13.0825 13.5221 13.0356 13.3926 13.0356ZM16.6069 13.0356C16.4775 13.0356 16.3524 13.0825 16.2548 13.1676C16.1573 13.2527 16.0938 13.3702 16.0762 13.4985L16.0712 13.5713V19.2856L16.0762 19.3585C16.0939 19.4867 16.1573 19.6042 16.2549 19.6892C16.3524 19.7743 16.4775 19.8212 16.6069 19.8212C16.7364 19.8212 16.8614 19.7743 16.959 19.6892C17.0565 19.6042 17.12 19.4867 17.1376 19.3585L17.1426 19.2856V13.5713L17.1376 13.4985C17.12 13.3702 17.0566 13.2527 16.959 13.1676C16.8615 13.0825 16.7364 13.0356 16.6069 13.0356ZM14.9998 7.85704C14.6394 7.85692 14.2922 7.99304 14.028 8.23811C13.7637 8.48317 13.6018 8.81907 13.5748 9.17847L13.5712 9.28561H16.4284L16.4248 9.17847C16.3978 8.81907 16.2359 8.48317 15.9716 8.23811C15.7073 7.99304 15.3602 7.85692 14.9998 7.85704V7.85704Z" fill="white"/>
                        </svg>
                    </div>
                    <div class="crop">
                        <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="15" cy="15" r="15" fill="#1972A4"/>
                            <path d="M20.8332 11.2501C20.8332 10.1009 19.899 9.16675 18.7498 9.16675H11.6665V6.66675H9.1665V9.16675H6.6665V11.6667H18.3332V23.3334H20.8332V20.8334H23.3332V18.3334H20.8332V11.2501Z" fill="white"/>
                            <path d="M11.6665 13.3333H9.1665V18.7499C9.1665 19.8991 10.1007 20.8333 11.2498 20.8333H16.6665V18.3333H11.6665V13.3333Z" fill="white"/>
                        </svg>
                    </div>
                </div>
                <div class="mockups-page__prew">
                    <img src="{{ url('/') }}/img/templates/mockups/2.jpg">
                    <div class="delete">
                        <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="15" cy="15" r="15" fill="#1972A4"/>
                            <path d="M14.9998 6.42847C15.7328 6.42847 16.4378 6.71021 16.9689 7.21541C17.5001 7.72062 17.8167 8.41064 17.8534 9.14275L17.8569 9.28561H21.4284C21.6104 9.28581 21.7855 9.35552 21.9179 9.4805C22.0503 9.60548 22.13 9.77629 22.1406 9.95803C22.1513 10.1398 22.0922 10.3187 21.9753 10.4583C21.8585 10.598 21.6927 10.6877 21.5119 10.7092L21.4284 10.7142H20.8219L19.9791 21.1092C19.9247 21.7799 19.6198 22.4057 19.1251 22.8619C18.6304 23.3181 17.982 23.5714 17.3091 23.5713H12.6905C12.0175 23.5714 11.3692 23.3181 10.8745 22.8619C10.3798 22.4057 10.0749 21.7799 10.0205 21.1092L9.17693 10.7142H8.57122C8.39627 10.7142 8.22741 10.6499 8.09667 10.5337C7.96593 10.4174 7.8824 10.2572 7.86193 10.0835L7.85693 9.9999C7.85696 9.82494 7.92119 9.65608 8.03744 9.52534C8.1537 9.3946 8.3139 9.31108 8.48765 9.29061L8.57122 9.28561H12.1426C12.1426 8.52785 12.4437 7.80112 12.9795 7.2653C13.5153 6.72949 14.242 6.42847 14.9998 6.42847V6.42847ZM13.3926 13.0356C13.2632 13.0356 13.1381 13.0825 13.0406 13.1676C12.943 13.2527 12.8795 13.3702 12.8619 13.4985L12.8569 13.5713V19.2856L12.8619 19.3585C12.8796 19.4867 12.943 19.6042 13.0406 19.6892C13.1382 19.7743 13.2632 19.8212 13.3926 19.8212C13.5221 19.8212 13.6471 19.7743 13.7447 19.6892C13.8423 19.6042 13.9057 19.4867 13.9234 19.3585L13.9284 19.2856V13.5713L13.9234 13.4985C13.9058 13.3702 13.8423 13.2527 13.7447 13.1676C13.6472 13.0825 13.5221 13.0356 13.3926 13.0356ZM16.6069 13.0356C16.4775 13.0356 16.3524 13.0825 16.2548 13.1676C16.1573 13.2527 16.0938 13.3702 16.0762 13.4985L16.0712 13.5713V19.2856L16.0762 19.3585C16.0939 19.4867 16.1573 19.6042 16.2549 19.6892C16.3524 19.7743 16.4775 19.8212 16.6069 19.8212C16.7364 19.8212 16.8614 19.7743 16.959 19.6892C17.0565 19.6042 17.12 19.4867 17.1376 19.3585L17.1426 19.2856V13.5713L17.1376 13.4985C17.12 13.3702 17.0566 13.2527 16.959 13.1676C16.8615 13.0825 16.7364 13.0356 16.6069 13.0356ZM14.9998 7.85704C14.6394 7.85692 14.2922 7.99304 14.028 8.23811C13.7637 8.48317 13.6018 8.81907 13.5748 9.17847L13.5712 9.28561H16.4284L16.4248 9.17847C16.3978 8.81907 16.2359 8.48317 15.9716 8.23811C15.7073 7.99304 15.3602 7.85692 14.9998 7.85704V7.85704Z" fill="white"/>
                        </svg>
                    </div>
                    <div class="crop">
                        <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <circle cx="15" cy="15" r="15" fill="#1972A4"/>
                            <path d="M20.8332 11.2501C20.8332 10.1009 19.899 9.16675 18.7498 9.16675H11.6665V6.66675H9.1665V9.16675H6.6665V11.6667H18.3332V23.3334H20.8332V20.8334H23.3332V18.3334H20.8332V11.2501Z" fill="white"/>
                            <path d="M11.6665 13.3333H9.1665V18.7499C9.1665 19.8991 10.1007 20.8333 11.2498 20.8333H16.6665V18.3333H11.6665V13.3333Z" fill="white"/>
                        </svg>
                    </div>
                </div>
            </div>
            <div class="mockups-page__dinamic">
                <div class="mockups-page__dinamic-item">
                    <span>Apple</span>
                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect x="4.24268" y="5.75732" width="2" height="14" transform="rotate(-45 4.24268 5.75732)" fill="#C2C6DC"/>
                        <rect x="5.65674" y="15.6567" width="2" height="14" transform="rotate(-135 5.65674 15.6567)" fill="#C2C6DC"/>
                    </svg>
                </div>
                <div class="mockups-page__dinamic-item">
                    <span>Iphone 13 PRO MAX</span>
                    <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <rect x="4.24268" y="5.75732" width="2" height="14" transform="rotate(-45 4.24268 5.75732)" fill="#C2C6DC"/>
                        <rect x="5.65674" y="15.6567" width="2" height="14" transform="rotate(-135 5.65674 15.6567)" fill="#C2C6DC"/>
                    </svg>
                </div>
            </div>
            @includeIf('client.block_templates.includes.category_result')
        </div>

    </div>
</section>

@section('client_scripts')
    <script src="{{ asset('/js/modules/filter.js') }}"></script>
@endsection