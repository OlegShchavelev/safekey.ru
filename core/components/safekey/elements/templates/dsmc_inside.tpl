<!DOCTYPE html>
<html lang="ru">

{include 'head'}

<body>

<!-- Google Tag Manager (noscript) -->
<noscript>
    <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WMQXV5F"
            height="0" width="0" style="display:none;visibility:hidden"></iframe>
</noscript>
<!-- End Google Tag Manager (noscript) -->


{include 'section_callback_popup'}

<div class="page_container main_page_container" id="top">
    <div class="mobile_menu_toggler"></div>

    {include 'header'}
    <div class="header_placeholder"></div>

    <section class="main">

        <section class="the_content_section">
            <div class="inner_section clearfix">

                {include 'page.header'}

                {include 'service_top_block'}

                <div class="the_content_section_left">

                    {include 'section_top_slider'}

                    {include "introtext"}

                    {include 'section_top_hobnail'}

                    {include 'content_portfolio_mark2'}

                    {$_modx->resource.content}

     
                        {'!PageBlocks' | snippet : [
                        'cid' => 1,
                        'up' => 1,
                        ]}
                    
                  

                    {include 'advantages_block'}
                    

                    {*

                    {include 'section_price_2'}
                    {include 'how_we_work_block'}

                    {$_modx->resource.section_bottom_lead}


                    <br/>

                    {include 'section_horizontal_form_block'}

                    *}
                </div><!--/the_content_section_left-->

                <div class="the_content_section_right">

                    <div class="banners">
                        {'!BannerY' | snippet : [
                        'position' => 1,
                        'tpl' => 'byAd_right_bar'
                        ]}
                    </div>
                </div><!--/the_content_section_right-->
            </div>
        </section><!--/the_content_section-->
    </section><!--/main-->

    {include 'footer'}

</div><!--/container-->

<div class="popup thanks_popup" id="thanks_popup">
    <div class="the_form">
        <p class="form_title">Спасибо. Мы свяжемся с Вами в ближайшее время.</p>
    </div>
</div><!--/thanks_popup-->

{include 'mobile_left_bar'}

{include 'scripts'}


</body>

</html>