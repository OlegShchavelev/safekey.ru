<!DOCTYPE html>
<html lang="ru">

{include 'head'}

<body>

<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WMQXV5F"
                  height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
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

                <div class="contacts_page">
                    <div class="contacts_block">

                        {'!PageBlocks' | snippet : [
                        'cid' => 2
                        ]}

                        <a href="#" class="button mini_button contacts_order_call">Заказать звонок</a>

                        {'!mvtForms2' | snippet : ['form'=>'contact']}


                    </div><!--/contacts_block-->

                    {set $rows = json_decode($_modx->resource.yandex_map, true)}
                    {set $i = 1}



                    <div class="map" id="map" data-map-coords1="59.919447" data-map-coords2="30.392226"></div>

                    <div class="map_pin_list" style="width:0px;height:0px;overflow:hidden;padding:0;margin:0;opacity:0;">

                        {'!PageBlocks' | snippet : [
                        'cid' => 2,
                        'tpl' => 'dsmc.PageBlocks.map.coords'
                        ]}

                    </div>

                </div><!--/contacts_page-->


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

<!--/ mobile menu end-->

{include 'scripts'}


</body>

</html>