<!DOCTYPE html>
<html lang="ru">

{include 'head'}

<body itemscope itemtype="http://schema.org/WebPage">

{include 'section_callback_popup'}
<div class="page_container main_page_container" id="top">
    <div class="mobile_menu_toggler"></div>

    {include 'header'}
    <div class="header_placeholder"></div>
    {if $_modx->resource.main_banners ?}
    <section class="main">
        {set $rows = json_decode($_modx->resource.main_banners, true)}
        <section class="top_banner_section">
            <div class="inner_section clearfix">
                <div class="top_banner">
                    {foreach $rows as $row}
                        <div class="top_banner_column">
                            {set $childRows = $row.column | fromJSON}
                            {foreach $childRows as $chRow}
                                {if 'mobile' | mobiledetect and $chRow.mobile_display == 1}
                                    <div class="top_banner_item {if $chRow.mobile_display == 1}wide{/if}">
                                        <img src="{$chRow.image | phpthumbon : "w=570&q=50"}" alt="" />

                                        <div class="caption">
                                            <div class="caption_inner">
                                                <p class="title">
                                                    {$chRow.title}
                                                </p>

                                                {$chRow.intro}

                                                <a href="{$_modx->makeUrl($chRow.link)}" class="ref"></a>
                                            </div>
                                        </div>
                                    </div>
                                {elseif 'tablet' | mobiledetect or 'standard' | mobiledetect}
                                    <div class="top_banner_item">
                                        <img src="{$chRow.image | phpthumbon : "w=570&q=70"}" alt="" />

                                        <div class="caption">
                                            <div class="caption_inner">
                                                <p class="title">
                                                    {$chRow.title}
                                                </p>

                                                {$chRow.intro}
                                                {if $chRow.on_link == 1}
                                                    <a href="{$_modx->makeUrl($chRow.link)}" class="button">{$chRow.name_buttom}</a>
                                                {/if}
                                                {if $_modx->makeUrl($chRow.link) ?}<a href="{$_modx->makeUrl($chRow.link)}" class="ref"></a>{/if}
                                            </div>
                                        </div>
                                    </div>
                                {/if}
                            {/foreach}
                        </div>

                    {/foreach}
                </div>
        </section><!--/top_banner_section-->
        {/if}

        {if $_modx->resource.section_advantages ?}
            {set $rows = json_decode($_modx->resource.section_advantages, true)}

            <section class="advantages_section">
                <div class="inner_section">
                    <div class="advantages_block">
                        {foreach $rows as $row}
                            <div class="advantages_item">
                                <div class="img"><img src="{$row.image | phpthumbon : "w=42&h=42&q=70"}" class="lazy" alt="" /></div>
                                <div class="text">
                                    <p>{$row.title}</p>
                                </div>
                            </div>
                        {/foreach}

                    </div><!--/advantages_block-->
                </div>
            </section><!--/advantages_section-->
        {/if}


        {if $_modx->resource.section_middle_banner_title or $_modx->resource.section_middle_banner_сontent ?}
            <section class="middle_banner_section" {if 'standard' | mobiledetect or 'tablet' | mobiledetect} style="background('{$_modx->resource.section_middle_banner_background | phpthumbon : "w=1792&q=70"}')" {/if}>
                <div class="inner_section clearfix" itemprop="mainContentOfPage">
                    <div class="middle_banner">
                        <h1>{$_modx->resource.section_middle_banner_title}</h1>
                        {$_modx->resource.section_middle_banner_сontent}
                    </div>
                    <a href="#" class="reveal_text"><span>Развернуть все</span></a>
                </div>
            </section><!--/middle_banner_section-->
        {/if}


        <section class="how_we_work_section">
            <div class="inner_section clearfix">
                <h2>{$_modx->resource.section_how_we_work_title}</h2>

                <ol class="how_we_work_block">
                    <li class="how_we_work_item">
                        <span class="number">1</span>
                        <div class="img"><img src="{$_modx->config.assets_url}template/img/how1.png" class="lazy" alt="" /></div>

                        <div class="text">
                            <p class="title">
                                Прием заявки, экспресс-анализ
                                вашей проблемы
                            </p>

                            <a href="#" class="button mini_button leave_request_button" rel="nofollow">Оставить заявку</a>
                        </div>
                    </li>

                    <li class="how_we_work_item">
                        <span class="number">2</span>
                        <div class="img"><img src="{$_modx->config.assets_url}template/img/how3.png" class="lazy" alt="" /></div>

                        <div class="text">
                            <p class="title">
                                Ищем варианты решения,
                                согласовываем перечень работ
                            </p>

                            <a href="{$_modx->makeUrl(2)}" class="button mini_button mini_button_mark2" rel="nofollow">О компании</a>
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
                        <div class="img"><img src="{$_modx->config.assets_url}template/img/how2.png" class="lazy" alt="" /></div>

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
                        <div class="img"><img src="{$_modx->config.assets_url}template/img/how4.png" class="lazy" alt="" /></div>

                        <div class="text">
                            <p class="title">
                                Техническая консультация,
                                прием, оплата работы специалистов
                            </p>

                            <a href="{$_modx->makeUrl(3)}" class="button mini_button mini_button_mark2" rel="nofollow">Портфолио</a>
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
                                <div class="img"><img src="{$row.image | phpthumbon : "w=298&h=391&q=70"}" class="lazy" alt="" /></div>

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

            </section><!--/popular_section-->
        {/if}

        {if $_modx->resource.section_clients_migx ?}

            <section class="clients_section">
                <div class="inner_section clearfix">

                    <h2><br/>{$_modx->resource.section_clients_title}</h2>

                    {$_modx->resource.section_clients_intro}

                    {set $rows = json_decode($_modx->resource.section_clients_migx, true)}

                    <div class="clients_slider">
                        {foreach $rows as $row}
                            <div class="clients_slider_item">
                                <img class="max-width-70 lazy" src="{$row.image | phpthumbon : "w=100&q=40&f=jpg"}"  alt="{$row.title}" />
                            </div>
                        {/foreach}
                    </div><!--/clients_slider-->
                </div>
            </section><!--/clients_section-->
        {/if}

        <section class="intresting_section">
            <div class="inner_section clearfix">
                <h3>{$_modx->resource.section_interesting_title}</h3>

                {set $rows = json_decode($_modx->resource.section_interesting_migx, true)}
                <!--noindex--><div class="news_block news_block_slider">
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

        {if $_modx->resource.section_seo_title or $_modx->resource.section_seo_content ?}
            <section class="seo_section">
                <div class="inner_section clearfix">
                    <h2>{$_modx->resource.section_seo_title}</h2>
                    {$_modx->resource.section_seo_content}
                </div>
            </section><!--/seo_section-->
        {/if}

        {if $_modx->resource.section_work_migx ?}
            <section class="logos_section">
                <div class="inner_section clearfix">
                    <h2>{$_modx->resource.section_work_title}</h2>

                    <div class="logos_slider">
                        {set $rows = json_decode($_modx->resource.section_work_migx, true)}

                        {foreach $rows as $row}
                            <div class="logos_slider_item">
                                <div class="logos_slider_item_content">
                                    <img src="{$row.image | phpthumbon : "w=100&q=40f=jpg"}" alt="{$row.title}" />
                                </div>
                            </div>
                        {/foreach}
                    </div><!--/logos_slider-->

                    <a href="#" rel="nofollow" class="button master_button">Вызвать мастера</a>
                </div>
            </section><!--/logos_section-->
        {/if}

        {'!mvtForms2' | snippet : ['form'=>'hide_form_2']}

    </section><!--/main-->

    {include 'footer'}

</div><!--/container-->

{include 'mobile_left_bar'}

{include 'scripts'}


</body>
</html>