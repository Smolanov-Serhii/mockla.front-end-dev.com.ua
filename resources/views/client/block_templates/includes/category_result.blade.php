<div class="mockups-page__result" id="category_result">
    @foreach($items as $item)
        @php
            /**
             * @var $item
             */
                $properties = $item->props->mapWithKeys(function ($prop) {
                                return [$prop->type->key => $prop->value];
                                });
        @endphp
        <div class="mockups-page__result-item">
            <a href="{{ route('client.mockups.item', ['alias' => $item->seo->alias]) }}"
               class="mockups-page__result-img">
                <img src="{{ url('/uploads/module_items') }}/{{$properties['image'] ?? '' }}"
                     alt="{{  $properties['title'] ?? '' }}">
            </a>
            <div class="mockups-page__result-content">
                <h3 class="mockups-page__result-title">
                    {{  $properties['title'] ?? ''  }}
                </h3>
{{--                <a href="{{ route('client.mockups.item', ['alias' => $item->seo->alias])  ?? '' }}"--}}
{{--                   class="mockups-page__result-lnk">Подробнее...</a>--}}
            </div>
        </div>
    @endforeach

</div>
<div class="pagination">
    @php
        $class = "";
        if($items->onFirstPage()){
            $class="disabled";
        }
    @endphp

    <a href="{{ $items->url(1) }}" class=" {{$class}} ">
        <svg width="50" height="50" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect x="0.5" y="0.5" width="49" height="49" rx="4.5" fill="white" stroke="#C2C6DC"/>
            <path d="M17 19H19V31H17V19ZM27 26H33V24H27V19L21 25L27 31V26Z" fill="#C2C6DC"/>
        </svg>
    </a>

    <ul class="pagination__wrapper">
        @foreach(range(1, $items->lastPage()) as $page_num)
            <li>
                @if($items->currentPage() == $page_num)
                    <a class="current">{{ $page_num }}</a>
                @else
                    <a class="pagination__link" href="{{ $items->url($page_num) }}">{{ $page_num }}</a>
                @endif
            </li>
        @endforeach
    </ul>
    <a href="{{ $items->url($items->lastPage()) }}">
        <svg width="50" height="50" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
            <rect x="-0.5" y="0.5" width="49" height="49" rx="4.5" transform="matrix(-1 0 0 1 49 0)" fill="white" stroke="#C2C6DC"/>
            <path d="M33 19H31V31H33V19ZM23 26H17V24H23V19L29 25L23 31V26Z" fill="#C2C6DC"/>
        </svg>
    </a>
</div>
