{set $tv_top = 17 | resource: 'position_menu_top'}
{set $tv_main = 17 | resource: 'position_menu_main'}
{set $tv_footer_menu = 17 | resource: 'position_footer_menu'}
{set $tv_menu_migx = (17 | resource: 'structure') | fromJSON}



<!--/ mobile menu start-->

<div class="mobile_menu roll_over_menu">

    <div class="ul_sub_wrap" data-toggle="call_form">
        <ul class="header_menu_mobile_sub_categories_ul clearafter">
            <li class="form_li">

                {'!mvtForms2' | snippet : ['form'=>'mobile']}

                <div class="ul_sub_wrap" data-toggle="thanks">
                    <ul class="header_menu_mobile_sub_categories_ul clearafter">
                        <li class="form_li">
                            <div class="the_form">
                                <p class="thanks_title">
                                    Спасибо!
                                </p>

                                <p>
                                    Ваша заявка принята <br>
                                    наш менеджер перезвонит <br>
                                    вам через 30 минут
                                </p>

                                <!--<a href="#" class="close_all">Вернуться на главную</a>-->
                            </div>
                        </li>
                    </ul>
                </div><!--/ul_sub_wrap-->

            </li>
        </ul>
    </div>
    <!--/ul_sub_wrap-->
    {foreach $tv_menu_migx as $row}
    <div class="ul_sub_wrap" data-toggle="menu_id_{$row.resourse}">
        <ul class="header_menu_mobile_sub_categories_ul has_icons clearafter">
            {set $section_menu = $row.level | fromJSON}
            {foreach $section_menu as $section}
                {set $categories_menu = $section.categories | fromJSON}
                {foreach $categories_menu as $cat index=$index}
                    <li>
                        <div class="sub_wrap_subdivision">
                            <div class="sub_wrap_subdivision_item">

                                {if $cat.no_title == 0}
                                        {if $cat.link ?}
                                            <a class="sub_wrap_title" href="{$cat.link}">{$cat.name}</a>
                                        {else}
                                            <p class="sub_wrap_title">
                                            {$cat.name}
                                            </p>
                                        {/if}
                                {/if}

                                {*
                                <p class="sub_wrap_title">{$cat.name}</p>
                                *}

                                <ul>
                                    {set $item_menu = $cat.item | fromJSON}
                                    {foreach  $item_menu as $item}
                                        <li>
                                            <a href="{($item.id | url) ?: $item.url}">{$item.title}</a>
                                        </li>
                                    {/foreach}
                                </ul>

                            </div>
                        </div>
                    </li>
                {/foreach}
                <!--/ul_sub_wrap katalog_sub_wrap-->
            {/foreach}
        </ul>
    </div><!--/ul_sub_wrap katalog_sub_wrap-->
    {/foreach}

<ul class="header_menu_mobile_main_categories_ul clearafter">

    {'!pdoMenu' | snippet : [
    'parents' => 0,
    'resources' => $tv_main,
    'includeTVs' => 'icontv',
    'tvPrefix' => '',
    'tplOuter' => '@INLINE {$wrapper}',
    'tpl' => 'dsmc.pdoMenu.mobilebar.row',
    'rowClass' => 'ref_with_icon',
    'firstClass' => '',
    'lastClass' => 'last'
    ]}


    {'!pdoMenu' | snippet : [
    'parents' => 0,
    'resources' => $tv_footer_menu,
    'tplOuter' => '@INLINE {$wrapper}',
    'tpl' => '@INLINE <li {$classes}><a href="{$link}" {$attributes}><span>{$menutitle}</span></a>{$wrapper}</li>',
    'rowClass' => 'direct_ref',
    'firstClass' => '',
    'lastClass' => ''
    ]}

    <li class="rollover_contacts">
        <p class="phone"><a href="tel:{$_modx->config.phone | preg_replace:'/[^0-9.+]|/': ''}">{$_modx->config.phone}</a>
            <a class="tech_phone" href="tel:{$_modx->config.phone_support | preg_replace:'/[^0-9.+]|/': ''}">Техподдержка: <span>{$_modx->config.phone_support}</span></a>
        </p>

        <a data-toggle="call_form" href="#" class="mobile_order_call"><span>Заказать звонок</span></a>

    </li>
</ul>
</div>