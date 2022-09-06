
<?php
/**
 * @var $block \App\Models\Block;
 */
?>
@extends('client.layouts.main')

@section('breadcrumbs')
    @include('client.includes.breadcrumbs')
@endsection

@section('content')
    @foreach($model->seoable->blocks as $block)
        @if($block->enabled == 1)
            <?php $view = explode('.', $block->template->path)[0]; ?>
            @includeIf('client.block_templates.templates.'.$view)
        @endif
    @endforeach
@endsection

@section('client_js')

@endsection
