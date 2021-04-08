{set $tv_services = 17 | resource: 'position_menu_services'}
{set $tv_footer_menu = 17 | resource: 'position_footer_menu'}

<footer itemscope itemtype="http://schema.org/Organization">
    <div class="inner_section inner_footer clearfix">
        <div class="footer_column">
            <p class="head">Компания</p>

            <nav class="footer_menu">
                {'pdoMenu' | snippet : [
                'parents' => 0,
                'resources' => $tv_footer_menu
                ]}

            </nav>
        </div><!--/footer_column-->

        <div class="footer_column">
            <p class="head">Услуги</p>

            <nav class="footer_menu">
                {'pdoMenu' | snippet : [
                'parents' => 0,
                'resources' => $tv_services
                'tpl' => 'tpl.menu.footer.servise'
                ]}
            </nav>
        </div><!--/footer_column-->

        <div class="footer_column footer_column_contacts clearfix">
            <div class="footer_logo">
                <a href="#"><img src="{$_modx->config.assets_url}/template/img/logo.png" class="lazy" alt="" /><span itemprop="name"><b><i>Сейф</i>Кей</b></span></a>
            </div>

            <p class="copy">© {'year' | snippet} Safekey.ru, {$_modx->config.copy}</p>

            <p class="note">
                {$_modx->config.about_footer}
            </p>

            <a href="[[~114]]" class="policy" rel="nofollow"><span>Политика конфиденциальности</span></a>
        </div><!--/footer_column-->
    </div>

    <div class="footer_bottom" itemprop="address" itemscope itemtype="http://schema.org/PostalAddress">
        <div class="footer_bottom_contacts inner_section">
            <div class="footer_bottom_contacts_content">
                <p class="phone" itemprop="telephone">
                    <a href="tel:{$_modx->config.phone | preg_replace:'/[^0-9]|/': ''}" rel="nofollow">{$_modx->config.phone}</a>
                </p>

                <p class="mail" itemprop="email">
                    <a href="mailto:{$_modx->config.mail}" rel="nofollow"><span>{$_modx->config.mail}</span></a>
                </p>

                <p class="adress" itemprop="streetAddress">
                    {$_modx->config.address}
                </p>
            </div>
        </div>
    </div>
</footer>

<div class="share-button on-up">
    <a href="{'сс_chat_whatsapp' | option}" class="item">
        <i class="fab fa-whatsapp" aria-hidden="true"></i>
    </a>
    <a href="{'cc_chat_viber' | option}" class="item">
        <i class="fab fa-viber" aria-hidden="true"></i>
    </a>
    <a href="{'cc_chat_telegram' | option}" class="item">
        <i class="fab fa-telegram-plane" aria-hidden="true"></i>
    </a>
    <div class="item open_share">
        <i class="far fa-comment-alt" aria-hidden="true"></i>
    </div>
</div>

<div class="back-to-top on-up d-flex">
    <i class="fas fa-angle-up"></i>
</div>

<div class="share-block-absolute">
    <!-- filter -->
    <svg>
        <defs>
            <filter id="goo">
                <feGaussianBlur in="SourceGraphic" stdDeviation="8" result="shadow"/>
                <feOffset in="shadow" dx="0" dy="0" result="shadow"/>
                <feColorMatrix in="shadow" mode="matrix" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 18 -7"
                               result="shadow2"/>
                <feBlend in="SourceGraphic" in2="shadow2"/>
            </filter>
        </defs>
    </svg>
    <!-- back-to-top -->
</div>