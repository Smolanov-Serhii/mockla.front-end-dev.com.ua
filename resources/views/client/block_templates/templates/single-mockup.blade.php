<?php
$contents = $block->mappedByKey();

/**
 * @var $module_item \App\Models\ModuleItem;
 */

//$attributes = $program->attrs();
$properties = $module_item->props->mapWithKeys(function ($prop) {
    return [$prop->type->key => $prop->value];
});

$items = $module_item->blocks;
?>

<section class="single-mockup">
    <div class="single-mockup__container main-container">
        <div class="single-mockup__header">

        </div>
        <div class="single-mockup__content">
            <div class="single-mockup__aside">
                <example-component mockup="{{$module_item->id}}" @class('single-mockup__button') text="{{ 'Upload image' }}"></example-component>
                @if(Auth::check())
                    <div class="mockups-page__prews">
                    @foreach(Auth::user()->images as $image)
                            <div class="mockups-page__prew active">
                                <img src="{{asset('uploads/'.$image->image)}}">
                                <div class="delete">
                                    <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <circle cx="15" cy="15" r="15" fill="#1972A4"></circle>
                                        <path d="M14.9998 6.42847C15.7328 6.42847 16.4378 6.71021 16.9689 7.21541C17.5001 7.72062 17.8167 8.41064 17.8534 9.14275L17.8569 9.28561H21.4284C21.6104 9.28581 21.7855 9.35552 21.9179 9.4805C22.0503 9.60548 22.13 9.77629 22.1406 9.95803C22.1513 10.1398 22.0922 10.3187 21.9753 10.4583C21.8585 10.598 21.6927 10.6877 21.5119 10.7092L21.4284 10.7142H20.8219L19.9791 21.1092C19.9247 21.7799 19.6198 22.4057 19.1251 22.8619C18.6304 23.3181 17.982 23.5714 17.3091 23.5713H12.6905C12.0175 23.5714 11.3692 23.3181 10.8745 22.8619C10.3798 22.4057 10.0749 21.7799 10.0205 21.1092L9.17693 10.7142H8.57122C8.39627 10.7142 8.22741 10.6499 8.09667 10.5337C7.96593 10.4174 7.8824 10.2572 7.86193 10.0835L7.85693 9.9999C7.85696 9.82494 7.92119 9.65608 8.03744 9.52534C8.1537 9.3946 8.3139 9.31108 8.48765 9.29061L8.57122 9.28561H12.1426C12.1426 8.52785 12.4437 7.80112 12.9795 7.2653C13.5153 6.72949 14.242 6.42847 14.9998 6.42847V6.42847ZM13.3926 13.0356C13.2632 13.0356 13.1381 13.0825 13.0406 13.1676C12.943 13.2527 12.8795 13.3702 12.8619 13.4985L12.8569 13.5713V19.2856L12.8619 19.3585C12.8796 19.4867 12.943 19.6042 13.0406 19.6892C13.1382 19.7743 13.2632 19.8212 13.3926 19.8212C13.5221 19.8212 13.6471 19.7743 13.7447 19.6892C13.8423 19.6042 13.9057 19.4867 13.9234 19.3585L13.9284 19.2856V13.5713L13.9234 13.4985C13.9058 13.3702 13.8423 13.2527 13.7447 13.1676C13.6472 13.0825 13.5221 13.0356 13.3926 13.0356ZM16.6069 13.0356C16.4775 13.0356 16.3524 13.0825 16.2548 13.1676C16.1573 13.2527 16.0938 13.3702 16.0762 13.4985L16.0712 13.5713V19.2856L16.0762 19.3585C16.0939 19.4867 16.1573 19.6042 16.2549 19.6892C16.3524 19.7743 16.4775 19.8212 16.6069 19.8212C16.7364 19.8212 16.8614 19.7743 16.959 19.6892C17.0565 19.6042 17.12 19.4867 17.1376 19.3585L17.1426 19.2856V13.5713L17.1376 13.4985C17.12 13.3702 17.0566 13.2527 16.959 13.1676C16.8615 13.0825 16.7364 13.0356 16.6069 13.0356ZM14.9998 7.85704C14.6394 7.85692 14.2922 7.99304 14.028 8.23811C13.7637 8.48317 13.6018 8.81907 13.5748 9.17847L13.5712 9.28561H16.4284L16.4248 9.17847C16.3978 8.81907 16.2359 8.48317 15.9716 8.23811C15.7073 7.99304 15.3602 7.85692 14.9998 7.85704V7.85704Z"
                                              fill="white"></path>
                                    </svg>
                                </div>
                                <div class="crop">
                                    <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                                        <circle cx="15" cy="15" r="15" fill="#1972A4"></circle>
                                        <path d="M20.8332 11.2501C20.8332 10.1009 19.899 9.16675 18.7498 9.16675H11.6665V6.66675H9.1665V9.16675H6.6665V11.6667H18.3332V23.3334H20.8332V20.8334H23.3332V18.3334H20.8332V11.2501Z"
                                              fill="white"></path>
                                        <path d="M11.6665 13.3333H9.1665V18.7499C9.1665 19.8991 10.1007 20.8333 11.2498 20.8333H16.6665V18.3333H11.6665V13.3333Z"
                                              fill="white"></path>
                                    </svg>
                                </div>
                            </div>
                    @endforeach
                    </div>
                @endif
            </div>
            <div class="single-mockup__main">
                <div class="single-mockup__main-img">
                    <img class="img" src="{!! '/uploads/module_items/' . $properties['image-single'] ?? '' !!}"
                         alt=" {{ $properties['title'] ?? ''}}">
                    <img class="def" src="{{ '/img/templates/single-mockup/def.svg'}}"
                         alt=" {{ $properties['title'] ?? ''}}">
                </div>
            </div>
            <div class="single-mockup__downloads">
                <label class="banner__button button-grey"><span class="btn">Download</span>
                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M11.8316 15.8097C11.8516 15.8341 11.8771 15.8539 11.9063 15.8675C11.9355 15.8811 11.9675 15.8881 12 15.8881C12.0325 15.8881 12.0645 15.8811 12.0937 15.8675C12.1229 15.8539 12.1484 15.8341 12.1684 15.8097L15.1631 12.1866C15.2727 12.0537 15.1738 11.8568 14.9947 11.8568H13.0134V3.20455C13.0134 3.09205 12.9171 3 12.7995 3H11.1952C11.0775 3 10.9813 3.09205 10.9813 3.20455V11.8543H9.00535C8.8262 11.8543 8.72727 12.0511 8.8369 12.1841L11.8316 15.8097ZM21.7861 14.9148H20.1818C20.0642 14.9148 19.9679 15.0068 19.9679 15.1193V19.0568H4.03209V15.1193C4.03209 15.0068 3.93583 14.9148 3.81818 14.9148H2.2139C2.09626 14.9148 2 15.0068 2 15.1193V20.1818C2 20.6344 2.38235 21 2.85561 21H21.1444C21.6176 21 22 20.6344 22 20.1818V15.1193C22 15.0068 21.9037 14.9148 21.7861 14.9148Z"
                              fill="#C2C6DC"/>
                    </svg>
                </label>
            </div>
        </div>
    </div>
</section>