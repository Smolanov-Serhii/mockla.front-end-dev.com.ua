<?php
$props = Auth::user()->client->props->mapWithKeys(function ($prop) {
    return [$prop->type->key => $prop->value];
});
?>

<section class="cabinet">
    @foreach($props as $prop)
        <p>{{$prop}}</p>
    @endforeach
</section>