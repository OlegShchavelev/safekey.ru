{set $tv_main = 17 | resource: 'position_menu_main'}

<!DOCTYPE html>
<html lang="ru">

{include 'head'}

<body>

{include 'section_callback_popup'}
<div class="page_container main_page_container" id="top">
    <div class="mobile_menu_toggler"></div>

    {include 'header'}
    <div class="header_placeholder"></div>

    <section class="section-main-banner">
        <div class="container px-0 mx-0 mx-lg-auto">
            <div class="row no-gutters">
                <div class="col-lg-auto d-none d-lg-block">
                    {'!pdoMenu' | snippet : [
                    'parents' => 0,
                    'resources' => $tv_main,
                    'outerClass' => 'sidebar-menu-dropdown',
                    'includeTVs' => 'icontv, tv_menu_navbar_menutitle',
                    'tvPrefix' => '',
                    'rowClass' => 'menu-item',
                    'parentClass' => 'menu-item menu-dropdown',
                    'tpl' => 'dsmc.pdoMenu.navbar.row',
                    'tplParentRow' => 'dsmc.pdoMenu.navbar.parentrow'
                    ]}
                </div>
                <div class="col-lg-auto">
                    <div class="img-banner">
                        <div class="img-banner-bg-img"
                             style="background-image:url({'tv_main_banner_img' | dsmc_tv});">
                            <div class="row h-100 p-3 no-gutters">
                                <div class="col-lg-6 img-banner-row d-flex flex-column justify-content-end">
                                    <div class="p-3">
                                        <div class="img-banner-title">{'tv_main_banner_title' | dsmc_tv}</div>
                                        <div class="img-banner-text pt-4 mb-5">
                                            {'tv_main_banner_intro' | dsmc_tv}
                                        </div>
                                        {if 'tv_main_banner_link' | dsmc_tv ?}
                                            <div class="img-banner-text my-5">
                                                <a href="{'tv_main_banner_link' | dsmc_tv | url}"
                                                   class="button mini_button button-info"
                                                   tabindex="0">Подробнее</a>
                                            </div>
                                        {/if}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    {if $_modx->resource.section_work_migx ?}
        <section class="logos_section">
            <div class="inner_section clearfix">
                <!--<h2>{$_modx->resource.section_work_title}</h2>-->

                <div class="logos_slider2_wrap">

                    <div class="logos_slider logos_slider2">
                        {set $rows = json_decode($_modx->resource.section_work_migx, true)}
                        {set $rows = array_chunk($rows, 2)}

                        {foreach $rows as $group}
                            <div class="logos_slider_item">
                                {foreach $group as $row}
                                    {if $row.link ?}
                                        <a class="logos_slider_item_cell" href="{$row.link | url}">
                                            <div class="logos_slider_item_content">
                                                <img src="{$row.image | phpthumbon : "w=100&q=40f=jpg"}"
                                                     alt="{$row.title}"/>
                                            </div>
                                        </a>
                                    {else}
                                        <div class="logos_slider_item_cell">
                                            <div class="logos_slider_item_content">
                                                <img src="{$row.image | phpthumbon : "w=100&q=40f=jpg"}"
                                                     alt="{$row.title}"/>
                                            </div>
                                        </div>
                                    {/if}
                                {/foreach}
                            </div>
                        {/foreach}
                    </div><!--/logos_slider-->
                </div>
                <!--<a href="#" rel="nofollow" class="button master_button">Вызвать мастера</a>-->
            </div>
        </section>
        <!--/logos_section-->
    {/if}

    {set $main_banners = 'tv_main_migx_banner' | dsmc_tv | fromJSON}

    <section class="py-5">
        <div class="container">
            <div class="row no-gutters">
                {foreach $main_banners as $banner}
                <div class="col-md-4">
                    <div class="card card-bg-{$banner.bg} card-banner card-hidden card-bg-pos-{$banner.type_illustration} card-radius-10 mr-0 mr-md-2 mb-3 mb-md-0" {if $banner.bg_images ?}style="background: url({$banner.bg_images});"{/if}>
                        <div class="card-img-bg">
                            <img src="{$banner.illustration}">
                        </div>
                        <div class="card-body">
                            {if $banner.name ?}
                                <div class="card-title">
                                    {$banner.name}
                                </div>
                            {/if}
                            <div class="card-text">
                                {$banner.list | dsmc_list}
                            </div>
                            {if $banner.intro ?}
                                <div class="card-text">
                                    {$banner.intro}
                                </div>
                            {/if}
                        </div>
                        {if $banner.link ?}
                            <div class="card-img-overlay">
                                <a href="{$banner.link | url}">
                                </a>
                            </div>
                        {/if}
                    </div>
                </div>
                {/foreach}
                {*
                <div class="col-md-4">
                    <div class="card card-bg-gradient-success card-hidden card-banner card-bg-pos-2 card-radius-10 mr-0 mr-md-2 mb-3 mb-md-0">
                        <div class="card-img-bg">
                            <img src="images/1/safekey_banner_2_1998.png">
                        </div>
                        <div class="card-body">
                            <div class="card-title">
                                Единственный <br> в России
                            </div>
                            <div class="card-text">
                                мультибрендовый <br>
                                центр обслуживания <br>
                                сейфов <br>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-hidden card-banner card-radius-10 mb-3 mb-md-0" style="background: url(images/1/septikspb_banner_key.jpg);">
                        <div class="card-img-bg"></div>
                        <div class="card-body">
                            <div class="card-title">
                                Музей замков <br> и ключей
                            </div>
                            <div class="card-text">
                                уникальная коллекция <br>
                                запорных механизмов
                            </div>
                        </div>
                    </div>
                </div>
                *}
            </div>
        </div>
    </section>


    {if $_modx->resource.section_advantages ?}

        {set $rows = json_decode($_modx->resource.section_advantages, true)}
        <section class="advantages_section">
            <div class="inner_section">
                <div class="advantages_block">
                    {foreach $rows as $row}
                        <div class="advantages_item">
                            <div class="img"><img src="{$row.image | phpthumbon : "w=42&h=42&q=70"}" class="lazy"
                                                  alt=""/></div>
                            <div class="text">
                                <p>{$row.title}</p>
                            </div>
                        </div>
                    {/foreach}

                </div><!--/advantages_block-->
            </div>
        </section>
        <!--/advantages_section-->
    {/if}


    {if $_modx->resource.section_middle_banner_title or $_modx->resource.section_middle_banner_сontent ?}
        <section
                class="middle_banner_section" {if 'standard' | mobiledetect or 'tablet' | mobiledetect} style="background('{$_modx->resource.section_middle_banner_background | phpthumbon : "w=1792&q=70"}')" {/if}>
            <div class="inner_section clearfix">
                <div class="middle_banner">
                    <h1>{$_modx->resource.section_middle_banner_title}</h1>
                    {$_modx->resource.section_middle_banner_сontent}
                </div>
                <a href="#" class="reveal_text"><span>Развернуть все</span></a>
            </div>
        </section>
        <!--/middle_banner_section-->
    {/if}


    <section class="how_we_work_section">
        <div class="inner_section clearfix">
            <h2>{$_modx->resource.section_how_we_work_title}</h2>

            <ol class="how_we_work_block">
                <li class="how_we_work_item">
                    <span class="number">1</span>
                    <div class="img"><img src="{$_modx->config.assets_url}template/img/how1.png" class="lazy"
                                          alt=""/></div>

                    <div class="text">
                        <p class="title">
                            Прием заявки, экспресс-анализ
                            вашей проблемы
                        </p>

                        <a href="#" class="button mini_button leave_request_button">Оставить заявку</a>
                    </div>
                </li>

                <li class="how_we_work_item">
                    <span class="number">2</span>
                    <div class="img"><img src="{$_modx->config.assets_url}template/img/how3.png" class="lazy"
                                          alt=""/></div>

                    <div class="text">
                        <p class="title">
                            Ищем варианты решения,
                            согласовываем перечень работ
                        </p>

                        <a href="{$_modx->makeUrl(2)}" class="button mini_button mini_button_mark2">О компании</a>
                    </div>
                </li>
            </ol><!--/how_we_work_block-->
        </div>
    </section><!--/how_we_work_section-->

    {'!mvtForms2' | snippet : ['form'=>'hide_form']}

    <section class="how_we_work_section no_padding_top">
        <div class="inner_section clearfix">

            <ol class="how_we_work_block no_padding_top">

                <li class="how_we_work_item">
                    <span class="number">3</span>
                    <div class="img"><img src="{$_modx->config.assets_url}template/img/how2.png" class="lazy"
                                          alt=""/></div>

                    <div class="text">
                        <p class="title">
                            Оперативный выезд, выполнение
                            работ на месте
                        </p>

                        <!-- <a href="{$_modx->makeUrl(4)}" class="button mini_button checked_button">Гарантия на вскрытие</a> -->
                    </div>
                </li>
                <li class="how_we_work_item">
                    <span class="number">4</span>
                    <div class="img"><img src="{$_modx->config.assets_url}template/img/how4.png" class="lazy"
                                          alt=""/></div>

                    <div class="text">
                        <p class="title">
                            Техническая консультация,
                            прием, оплата работы специалистов
                        </p>

                        <a href="{$_modx->makeUrl(3)}" class="button mini_button mini_button_mark2">Портфолио</a>
                    </div>
                </li>

            </ol><!--/how_we_work_block-->
        </div>
    </section><!--/how_we_work_section-->

    {if $_modx->resource.section_popular_migx ?}
        <section class="popular_section">
            <div class="inner_section clearfix">

                <h2>{$_modx->resource.section_popular_title}</h2>

                {$_modx->resource.section_popular_intro}

            </div>

            {set $rows = json_decode($_modx->resource.section_popular_migx, true)}

            <div class="popular_slider_wrap">
                <div class="popular_slider clearfix">

                    {foreach $rows as $row}
                        <div class="popular_slider_item">
                            <div class="img"><img src="{$row.image | phpthumbon : "w=298&h=391&q=70"}" class="lazy"
                                                  alt=""/></div>

                            <div class="caption">
                                <a href="{$row.link}" class="title">{$row.title}</a>

                                <p class="price">
                                    {$row.price}
                                </p>
                            </div>

                            <a href="{$row.link}" class="ref"></a>

                        </div>
                    {/foreach}

                </div><!--/popular_slider-->
            </div>

        </section>
        <!--/popular_section-->
    {/if}

    {if $_modx->resource.section_clients_migx ?}
        <section class="clients_section">
            <div class="inner_section clearfix">

                <h2>{$_modx->resource.section_clients_title}</h2>

                {$_modx->resource.section_clients_intro}

                {set $rows = json_decode($_modx->resource.section_clients_migx, true)}

                <div class="clients_slider">
                    {foreach $rows as $row}
                        <div class="clients_slider_item">

                            <img class="max-width-70 lazy" src="{$row.image | phpthumbon : "w=100&q=40&f=jpg"}"
                                 alt="{$row.title}"/>

                        </div>
                    {/foreach}
                </div><!--/clients_slider-->


            </div>
        </section>
        <!--/clients_section-->
    {/if}

    {if $_modx->resource.section_seo_title or $_modx->resource.section_seo_content ?}
        <section class="seo_section">
            <div class="inner_section clearfix">

                <div class="seo_left">
                    <h2>{$_modx->resource.section_seo_title}</h2>
                    {$_modx->resource.section_seo_content}
                </div>

                <div class="seo_right">

                    {set $rows = json_decode($_modx->resource.middle_banners2, true)}

                    {foreach $rows as $row}
                        <div class="top_banner_item">
                            <img src="{$row.image | phpthumbon : "w=570&q=70"}" class="lazy" alt=""/>

                            <div class="caption">
                                <div class="caption_inner">
                                    <p class="title">
                                        {$row.title}
                                    </p>

                                    {$row.intro}
                                    {if $row.on_link == 1}
                                        <a href="{$_modx->makeUrl($row.link)}" class="button">{$row.name_buttom}</a>
                                    {/if}
                                    {if $_modx->makeUrl($row.link) ?}<a href="{$_modx->makeUrl($row.link)}"
                                                                        class="ref"></a>{/if}
                                </div>
                            </div>
                        </div>
                    {/foreach}
                </div>

            </div>
        </section>
        <!--/seo_section-->
    {/if}

    {if $_modx->resource.section_video_code ?}
        <section class="section-video my-3 pb-5">
            <div class="inner_section clearfix">
                {if $_modx->resource.section_video_title ?}
                    <h2>{$_modx->resource.section_video_title}</h2>
                {/if}
                <div class="video">
                    {$_modx->resource.section_video_code}
                </div>
            </div>
        </section>
    {/if}


    <section class="photo_estimation_section">
        <div class="inner_section clearfix">

            <div class="photo_estimation_left">
                <img class="lazy" src="assets/template/img/ph01.png" alt=""/>

                <p class="title">
                    Оценим задачу <br/>
                    по фото
                </p>
            </div>

            <div class="photo_estimation_right">

                {include 'section_horizontal_form_block'}

            </div>

        </div>
    </section><!--/photo_estimation_section-->


    <section class="intresting_section">
        <div class="inner_section clearfix">
            <h3>{$_modx->resource.section_interesting_title}</h3>

            {set $rows = json_decode($_modx->resource.section_interesting_migx, true)}
            <!--noindex-->
            <div class="news_block news_block_slider">
                {foreach $rows as $row}
                    <div class="news_item {$row.color}">
                        <div class="news_item_content">
                            {if $row.tags != ''}
                                <span class="category">{$row.tags}</span>
                            {/if}

                            <p class="title">{$row.title}</p>

                            <p>
                                {$row.intro}
                            </p>
                            {if $row.color == 'white'}
                                <ul>
                                    {'!pdoPage' | snippet : [
                                    'tpl' => '@INLINE <li><a href="{$_modx->makeUrl($id)}">{$pagetitle | truncate : 27 : "..."}</a></li>',
                                    'parents' => 0,
                                    'resources' => $row.documents
                                    ]}
                                </ul>
                            {/if}

                            {if $row.link != ''}
                                {if $row.color != 'white'}
                                    <a href="{$_modx->makeUrl($row.link)}" class="button mini_button">Читать</a>
                                {else}
                                    <a href="{$_modx->makeUrl($row.link)}">Банк знаний</a>
                                {/if}
                            {/if}
                        </div>
                    </div>
                {/foreach}
            </div><!--/noindex--><!--/news_block-->

        </div>
    </section><!--/intresting_section-->


    {'!mvtForms2' | snippet : ['form'=>'hide_form_2']}

    </section><!--/main-->

    {include 'footer'}

</div><!--/container-->

{include 'mobile_left_bar'}

{include 'scripts'}


</body>
</html>