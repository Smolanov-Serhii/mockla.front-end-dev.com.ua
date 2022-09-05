<?php
$contents = $block->mappedByKey();
?>
<section class="secure-payment">
    <div class="secure-payment__container main-container">
        <img src="{{  url('/img/templates/secure-payment/design-right.svg') }}" class="secure-payment__design-right">
        <img src="{{  url('/img/templates/secure-payment/design-rings.svg') }}" class="secure-payment__design-rings">
        <h2 class="secure-payment__title section-title">
            {!! $contents['title']['value'] ?? '' !!}
        </h2>
        <div class="secure-payment__items">
            @foreach($block->Iterations as $iteration)
                @php
                    $properties = $iteration->mappedByKey();
                @endphp
                <div class="secure-payment__item">
                    <div class="secure-payment__item-icon">
                        <img src="{{  url('/') . '/uploads/contents/' . $properties['icon'] ?? ''}}" alt="{{  $properties['title'] ?? '' }}">
                    </div>
                    <h3 class="secure-payment__item-title">{{  $properties['title'] ?? '' }}</h3>
                    <div class="secure-payment__item-desc">
                        <p>{{  $properties['description'] ?? '' }}</p>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>
