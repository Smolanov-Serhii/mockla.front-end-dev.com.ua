@php
    $module = \App\Models\Module::where('name', 'mockups')
        ->with(['taxonomies', 'items.taxonomy_items'])
        ->first();


    $grouped_existed_taxonomy_items = \App\Models\TaxonomyItem::whereHas('module_items', function (\Illuminate\Database\Eloquent\Builder $query) use ($module) {
        $query->whereIn('id', $module['items']->pluck('id'));
    })->with('taxonomy')->get()->groupBy('taxonomy_id');

    $items = $module->items()->paginate(16);



@endphp
<section class="cabinet">
    <div class="cabinet__container main-container tabs-elements">
        <aside class="cabinet__aside">
            <div class="cabinet__aside-item tabs-nav-item button-grey active">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M11.8316 15.8097C11.8516 15.8341 11.8771 15.8539 11.9063 15.8675C11.9355 15.8811 11.9675 15.8881 12 15.8881C12.0325 15.8881 12.0645 15.8811 12.0937 15.8675C12.1229 15.8539 12.1484 15.8341 12.1684 15.8097L15.1631 12.1866C15.2727 12.0537 15.1738 11.8568 14.9947 11.8568H13.0134V3.20455C13.0134 3.09205 12.9171 3 12.7995 3H11.1952C11.0775 3 10.9813 3.09205 10.9813 3.20455V11.8543H9.00535C8.8262 11.8543 8.72727 12.0511 8.8369 12.1841L11.8316 15.8097ZM21.7861 14.9148H20.1818C20.0642 14.9148 19.9679 15.0068 19.9679 15.1193V19.0568H4.03209V15.1193C4.03209 15.0068 3.93583 14.9148 3.81818 14.9148H2.2139C2.09626 14.9148 2 15.0068 2 15.1193V20.1818C2 20.6344 2.38235 21 2.85561 21H21.1444C21.6176 21 22 20.6344 22 20.1818V15.1193C22 15.0068 21.9037 14.9148 21.7861 14.9148Z" fill="#C2C6DC"/>
                </svg>
                My Downloads
            </div>
            <div class="cabinet__aside-item tabs-nav-item button-grey">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M4 4C3.45228 4 3 4.45228 3 5V9C3 9.55228 2.55228 10 2 10C1.44772 10 1 9.55228 1 9V5C1 3.34772 2.34772 2 4 2H7.93517C8.42929 2.00256 8.91513 2.12714 9.34953 2.36265C9.78116 2.59667 10.1487 2.93304 10.42 3.34218L11.2356 4.53581L11.2452 4.55001C11.3358 4.68757 11.4589 4.80063 11.6037 4.87913C11.7479 4.9573 11.9091 4.9988 12.073 5H20C20.7957 5 21.5587 5.31607 22.1213 5.87868C22.6839 6.44129 23 7.20435 23 8V18C23 18.7957 22.6839 19.5587 22.1213 20.1213C21.5587 20.6839 20.7957 21 20 21H2C1.44772 21 1 20.5523 1 20C1 19.4477 1.44772 19 2 19H20C20.2652 19 20.5196 18.8946 20.7071 18.7071C20.8946 18.5196 21 18.2652 21 18V8C21 7.73478 20.8946 7.48043 20.7071 7.29289C20.5196 7.10536 20.2652 7 20 7H12.0648C11.5707 6.99744 11.0849 6.87286 10.6505 6.63735C10.2188 6.40333 9.85128 6.06696 9.58001 5.65782L8.76436 4.46419L8.75483 4.44999C8.66424 4.31243 8.54107 4.19937 8.39628 4.12087C8.25211 4.0427 8.09094 4.0012 7.92697 4H4Z" fill="#C2C6DC"/>
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.29289 9.29289C7.68342 8.90237 8.31658 8.90237 8.70711 9.29289L11.7071 12.2929C12.0976 12.6834 12.0976 13.3166 11.7071 13.7071L8.70711 16.7071C8.31658 17.0976 7.68342 17.0976 7.29289 16.7071C6.90237 16.3166 6.90237 15.6834 7.29289 15.2929L9.58579 13L7.29289 10.7071C6.90237 10.3166 6.90237 9.68342 7.29289 9.29289Z" fill="#C2C6DC"/>
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M4 14C3.73478 14 3.48043 14.1054 3.29289 14.2929C3.10536 14.4804 3 14.7348 3 15V16C3 16.5523 2.55228 17 2 17C1.44772 17 1 16.5523 1 16V15C1 14.2044 1.31607 13.4413 1.87868 12.8787C2.44129 12.3161 3.20435 12 4 12H10C10.5523 12 11 12.4477 11 13C11 13.5523 10.5523 14 10 14H4Z" fill="#C2C6DC"/>
                </svg>
                My Drafts
            </div>
            <div class="cabinet__aside-item tabs-nav-item button-grey">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M10 15C7.23858 15 5 17.2386 5 20V21C5 21.5523 4.55228 22 4 22C3.44772 22 3 21.5523 3 21V20C3 16.134 6.134 13 10 13H14C17.866 13 21 16.134 21 20V21C21 21.5523 20.5523 22 20 22C19.4477 22 19 21.5523 19 21V20C19 17.2386 16.7614 15 14 15H10Z" fill="#C2C6DC"/>
                    <path fill-rule="evenodd" clip-rule="evenodd" d="M12 4C10.3431 4 9 5.34314 9 7C9 8.65686 10.3431 10 12 10C13.6568 10 15 8.65685 15 7C15 5.34315 13.6568 4 12 4ZM7 7C7 4.23858 9.23858 2 12 2C14.7614 2 17 4.23857 17 7C17 9.76143 14.7614 12 12 12C9.23858 12 7 9.76143 7 7Z" fill="#C2C6DC"/>
                </svg>
                My Account
            </div>
            <div class="cabinet__aside-item tabs-nav-item button-grey">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                    <path d="M12.0004 4.55852C10.9079 3.55629 9.47776 3.00005 7.99349 3C7.20789 3.00082 6.4302 3.15661 5.70518 3.45842C4.98016 3.76023 4.32213 4.2021 3.76896 4.75859C1.40951 7.12237 1.41052 10.8196 3.77096 13.1734L11.123 20.5078C11.2935 20.8069 11.6224 21 12.0004 21C12.1557 20.9985 12.3084 20.9607 12.4463 20.8896C12.5842 20.8186 12.7035 20.7163 12.7946 20.5909L20.2299 13.1734C22.5904 10.8186 22.5904 7.12237 20.2279 4.75458C19.675 4.19912 19.0175 3.75815 18.2932 3.45704C17.5689 3.15592 16.7921 3.0006 16.0074 3C14.5232 3.00024 13.0931 3.55646 12.0004 4.55852ZM18.81 6.16906C20.3773 7.74058 20.3783 10.1954 18.812 11.7589L12.0004 18.5542L5.18883 11.7589C3.62256 10.1954 3.62356 7.74058 5.18683 6.17306C5.94891 5.41681 6.94563 5.00067 7.99349 5.00067C9.04136 5.00067 10.0341 5.41681 10.7901 6.17106L11.2915 6.67122C11.3845 6.7642 11.4951 6.83796 11.6167 6.88829C11.7383 6.93862 11.8687 6.96452 12.0004 6.96452C12.1321 6.96452 12.2625 6.93862 12.3842 6.88829C12.5058 6.83796 12.6163 6.7642 12.7094 6.67122L13.2107 6.17106C14.7269 4.66155 17.2959 4.66556 18.81 6.16906Z" fill="#C2C6DC"/>
                </svg>
                My Favorites
            </div>
{{--            <example-component token="{{ csrf_token() }}" text="Uploads image"></example-component>--}}
        </aside>
        <div class="cabinet__main">
            <div class="cabinet__main-item tabs-content-item active">
                @includeIf('client.block_templates.includes.category_result')
            </div>
            <div class="cabinet__main-item tabs-content-item">
                <div class="mockups-page__result" id="category_result">
                    @foreach(Auth::user()->images as $image)
                        <div class="mockups-page__result-item">
                            <div  class="mockups-page__result-img">
                                <img width="100" src="{{asset('uploads/'.$image->image)}}" alt="">
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="cabinet__main-item tabs-content-item cabinet__main-personal">
                <div class="cabinet__main-payment">
                    <div class="wrapper">
                        <div class="wrapper-name">PAYMENT INFORMATION</div>
                        <input type="text" name="cart" id="cart" placeholder="XXXX-XXXX-XXXX-1915">
                        <div class="change-cart">Change</div>
                    </div>
                    <div class="wrapper">
                        <div class="wrapper-name">ACCOUNT INFORMATION</div>
                        <div class="wrapper__item">
                            <span>E-mail</span>
                            <input type="email" name="email" id="email">
                        </div>
                        <div class="wrapper__item">
                            <span>Password</span>
                            <input type="password" name="password" id="password">
                        </div>
                        <div class="wrapper__item">
                            <span>New password</span>
                            <input type="password" name="new-password" id="new-password">
                        </div>

                        <button class="button-grey">Update</button>
                    </div>
                </div>
                <div class="cabinet__main-invoice">
                    <div class="wrapper">
                        <div class="wrapper-name">INVOICES</div>
                        <table>
                            <thead>
                                <tr>
                                    <th>Data</th>
                                    <th>Subscription</th>
                                    <th>Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>12/09/19</td>
                                    <td>Basic</td>
                                    <td>$29.99</td>
                                </tr>
                                <tr>
                                    <td>12/09/19</td>
                                    <td>Basic</td>
                                    <td>$29.99</td>
                                </tr>
                                <tr>
                                    <td>12/09/19</td>
                                    <td>Basic</td>
                                    <td>$29.99</td>
                                </tr>
                                <tr>
                                    <td>12/09/19</td>
                                    <td>Basic</td>
                                    <td>$29.99</td>
                                </tr>
                                <tr>
                                    <td>12/09/19</td>
                                    <td>Basic</td>
                                    <td>$29.99</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="cabinet__main-item tabs-content-item">
4
            </div>
        </div>
    </div>
</section>