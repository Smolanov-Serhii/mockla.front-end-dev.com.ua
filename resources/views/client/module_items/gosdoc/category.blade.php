<?php
/**
 * @var $module_item \App\Models\Module_items;
 */

//$attributes = $program->attrs();
//$properties = $module_item->props->mapWithKeys(function ($prop) {
//    return [$prop->type->key => $prop->value];
//});
?>


@extends('client.layouts.main')
@section('content')
    @yield('breadcrumbs')
        @include('client.block_templates.templates.gosdoc-page')
@endsection
