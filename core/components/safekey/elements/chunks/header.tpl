{set $tv_top = 17 | resource: 'position_menu_top'}
{set $tv_main = 17 | resource: 'position_menu_main'}


<header>
    <div class="header_top">
        <div class="inner_section clearfix">
            <nav class="header_top_menu">
                {'pdoMenu' | snippet : [
                'parents' => 0,
                'resources' => $tv_top
                ]}
            </nav>

        </div>
    </div><!--/header_top-->

    <div class="inner_header inner_section clearfix">

        <div class="logo">
            <a href="{$_modx->config.base_url}">
                <img src="{$_modx->config.assets_url}/template/img/logo.png" alt="Safekey"/>
                <span>
									<b><i>Safe</i>Key</b>
								    {$_modx->config.name}
								</span>
            </a>
        </div>

        [[-
        <div class="mobile_search_toggler"></div>
        ]]

        <div class="header_search clearfix">
        </div><!--/header_search-->

        <div class="header_right clearfix">
            <p class="phone"><a
                        href="tel:{$_modx->config.phone | preg_replace:'/[^0-9]|/': ''}">{$_modx->config.phone}</a>
                <a class="tech_phone" href="tel:{$_modx->config.phone_support | preg_replace:'/[^0-9]|/': ''}">Техподдержка:
                    <span>{$_modx->config.phone_support}</span></a>
            </p>

            <a href="#callback_popup" rel="nofollow" class="callback_button"><span>Заказать звонок</span></a>
        </div>

    </div><!--/inner_header-->

    <div class="header_menu_block d-none d-xl-block">
        <div class="header_menu_wrap inner_section clearfix">
            <nav class="header_menu">
                <ul class="header_menu_btn {'id' | resource != 1 ?: 'header_menu_btn_main'}">
                    <li>
                        <svg class="svg-icon mr-4">
                            <use xlink:href="#icon-hamburger"></use>
                        </svg>
                        Все услуги

                        {if 'id' | resource != 1}
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
                        {/if}
                        {*
                        <ul class="sidebar-menu-dropdown">
                            <li class="menu-item">
                                <a class="menu-link" href="#">
                                    <svg class="svg-icon">
                                        <use xlink:href="#icon-safe"></use>
                                    </svg>
                                    Сейфы
                                </a>
                            </li>
                            <li class="menu-item menu-dropdown">
                                <a class="menu-link" href="#">
                                    <svg class="svg-icon">
                                        <use xlink:href="#icon-safe"></use>
                                    </svg>
                                    Сейфы
                                </a>
                                <div class="megamenu">
                                    <div class="row">
                                        <div class="col-3">
                                            <div class="menu-nav-block">
                                                <div class="menu-nav-title">
                                                    <a href="#">Заголовок</a>
                                                </div>
                                                <ul class="menu-nav">
                                                    <li class="menu-nav-item">
                                                        <a class="menu-nav-link">Ремонт</a>
                                                    </li>
                                                    <li class="menu-nav-item">
                                                        <a class="menu-nav-link">Вскрытие замков</a>
                                                    </li>
                                                    <li class="menu-nav-item">
                                                        <a class="menu-nav-link">Поддержка</a>
                                                    </li>
                                                    <li class="menu-nav-item">
                                                        <a class="menu-nav-link">Установка</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="menu-nav-block">
                                                <div class="menu-nav-title">
                                                    <a href="#">Заголовок</a>
                                                </div>
                                                <ul class="menu-nav">
                                                    <li class="menu-nav-item">
                                                        <a class="menu-nav-link">Ремонт</a>
                                                    </li>
                                                    <li class="menu-nav-item">
                                                        <a class="menu-nav-link">Вскрытие замков</a>
                                                    </li>
                                                    <li class="menu-nav-item">
                                                        <a class="menu-nav-link">Поддержка</a>
                                                    </li>
                                                    <li class="menu-nav-item">
                                                        <a class="menu-nav-link">Установка</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="menu-nav-block">
                                                <div class="menu-nav-title">
                                                    <a href="#">Заголовок</a>
                                                </div>
                                                <ul class="menu-nav">
                                                    <li class="menu-nav-item">
                                                        <a class="menu-nav-link">Ремонт</a>
                                                    </li>
                                                    <li class="menu-nav-item">
                                                        <a class="menu-nav-link">Вскрытие замков</a>
                                                    </li>
                                                    <li class="menu-nav-item">
                                                        <a class="menu-nav-link">Поддержка</a>
                                                    </li>
                                                    <li class="menu-nav-item">
                                                        <a class="menu-nav-link">Установка</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="card">
                                                <a href="#">
                                                    <img class="img-banner" src="vendor/banner_menu.png">
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="menu-item">
                                <a class="menu-link" href="#">
                                    <svg class="svg-icon">
                                        <use xlink:href="#icon-safe"></use>
                                    </svg>
                                    Сейфы
                                </a>
                            </li>
                            <li class="menu-item">
                                <a class="menu-link" href="#">
                                    <svg class="svg-icon">
                                        <use xlink:href="#icon-safe"></use>
                                    </svg>
                                    Сейфы
                                </a>
                            </li>
                            <li class="menu-item">
                                <a class="menu-link" href="#">
                                    <svg class="svg-icon">
                                        <use xlink:href="#icon-safe"></use>
                                    </svg>
                                    Сейфы
                                </a>
                            </li>
                        </ul>
                        *}
                    </li>
                </ul>
                {'!pdoMenu' | snippet : [
                'parents' => 0,
                'includeTVs' => 'icontv, tv_menu_navbar_menutitle',
                'tvPrefix' => '',
                'sortby' => 'ids',
                'resources' => 'сс_header_menu' | option,
                'outerClass' => 'header_menu_navbar'
                'tpl' => '@INLINE <li {$classes}><a {if $icontv ?}class="has_icon"{/if} href="{$link}" {$attributes}><span>{if $icontv ?}<b><i class="icon-{$icontv}"></i></b>{/if}{$tv_menu_navbar_menutitle ?: $menutitle}</span></a>{$wrapper}</li>',
                ]}
            </nav>
        </div><!--/header_menu_block-->
    </div>
</header>