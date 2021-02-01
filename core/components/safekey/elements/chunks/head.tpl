{'!MinifyX' | snippet : [
'registerJs'=>'default'
'registerCss' => 'default'
'minifyCss' => 1,
'minifyJs'=> 1,
'cssSources' => '
        assets/template/css/jquery-ui.css,
        assets/template/css/jquery.fancybox.min.css,
        assets/template/css/ezmark.css,
        assets/template/css/slick.css,
        assets/template/css/slick-theme.css,
        assets/template/css/jquery.selectBox.css,
        assets/template/css/jquery.nouislider.min.css,
        assets/template/css/jquery.selectbox-mobile.css,
        assets/template/css/style.css?ver=1.01,
        assets/template/css/bootstrap-grid.min.css,
        assets/template/css/adaptive.css?ver=1.01,
        assets/template/css/custom.css,
        assets/template/css/notiflix-2.1.3.css
    ',
'jsSources' => '
        assets/template/js/jquery-3.5.1.min.js,
        assets/template/js/jquery.fancybox.min.js,
        assets/template/js/slick.min.js,
        assets/template/js/jquery.ezmark.min.js,
        assets/template/js/jquery.selectBox.js,
        assets/template/js/nouislider.min.js,
        assets/template/js/jquery.validate.js,
        assets/template/js/scriptjava_sender.js,
        assets/template/js/maskedinput.js,
        assets/template/js/jquery.matchHeight-min.js,
        assets/template/js/jquery.sticky.js,
        assets/template/js/jquery.selectbox-mobile.js,
        assets/template/js/jquery.inputmask.js,
        assets/template/js/main.js,
        assets/components/mvtforms2/js/web/mvtforms2.dsmc.js,
        assets/template/js/notiflix-2.1.3.js
        '
]
}



{set $tv_template_description = 17 | resource: 'template_description'}
{set $val_parrent = $_modx->resource.parent}

<head>

    {if $_modx->resource.seo_title != ''}
        <title>{$_modx->resource.seo_title}</title>
    {else}
        <title>{$_modx->resource.pagetitle}</title>
    {/if}
    <meta charset="{$_modx->config.charset}">
    <base href="{$_modx->config.site_url}">
    {if $_modx->resource.seo_description != ''}
        <meta name="description" content="{$_modx->resource.seo_description}">
    {else}
        {set $rows = json_decode($tv_template_description, true)}
        {foreach $rows as $row}
            {if $row.key_category == $val_parrent}
                <meta name="description" content="{$row.templetes_description}">
            {/if}
        {/foreach}
    {/if}

    <meta name="viewport" content="width=device-width">
    <meta name="yandex-verification" content="68f631b35e7e101f" />
    <meta name="yandex-verification" content="43d9811cc47d735f" />
    <link href="favicon.png" rel="shortcut icon" type="image/x-icon" />

    <!--[if lt IE 11]>
    <link rel="stylesheet" href="/assets/template/css/ie.css"/>
    <!--[endif]-->
    <link href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/template/css/bootstrap-grid.min.css">
    {$_modx->getPlaceholder('MinifyX.css')}
    {'!ga_head' | snippet}
    {'!jivo' | snippet}
</head>