<div class="service_top_block_form_wrap">
    <div class="the_form service_top_block_form">

        <form method="post" class="mvtForm2" id="{$formID}_form">
            <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
            <input type="hidden" name="token" value="{$token}">
            <input type="hidden" name="form" value="{$formID}">

            <p class="form_title">Оставить заявку</p>

            <div class="the_form_item">
                <input type="text" name="{$formID}_name" placeholder="Ваше имя">
            </div>

            <div class="the_form_item">
                <input type="text" name="{$formID}_phone" class="masked" data-mask="+# ### ### ## ##" placeholder="+7 812 956 65 66">
            </div>

            <div class="the_form_item">
                <input type="text" name="{$formID}_email" placeholder="Электронная почта">
            </div>

            <div class="the_form_div the_form_item the_form_item_accept" id="sf_{$formID}_accept">
                <input type="checkbox" id="{$formID}_accept" name="{$formID}_accept" checked style="display:none;">

                <label class="checkbox1_label" for="{$formID}_accept">
                    <svg width="18px" height="18px" viewBox="0 0 18 18">
                        <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                        <polyline points="1 9 7 14 15 4"></polyline>
                    </svg>
                    <!--noindex--><span>Я согласен с <a href="{'114' | url}">политикой конфиденциальности</a></span><!--/noindex-->
                </label>
            </div>

            <div class="the_form_item the_form_item_submit">
                <button id="horizontal_form_form_submit" id="{$formID}_form_submit" type="submit">Отправить</button>
            </div>
            <div class="form-success form-success-column d-none">
                <div class="form-success-icon">
                    <img src="img/icon-success-safe.png" alt="Заявка отправлена">
                </div>
                <div class="form-success-body">
                    <div class="form-success-title">Спасибо!</div>
                    <div class="form-success-text">Наш менеджер скоро <br> свяжется с вами</div>
                    <a href="{'base_url' | option}" class="form-success-btn">На главную</a>
                </div>
            </div>
        </form>
    </div>
</div><!--/service_top_block_form_wrap-->