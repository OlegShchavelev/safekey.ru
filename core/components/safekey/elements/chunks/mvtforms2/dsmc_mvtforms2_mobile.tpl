<div class="the_form">
    <form method="post" class="mvtForm2" id="{$formID}_form">
        <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
        <input type="hidden" name="token" value="{$token}">
        <input type="hidden" name="form" value="{$formID}">

        <p class="thanks_title">
            <span>Заказать</span> звонок
        </p>

        <p>
            наш менеджер перезвонит <br/>
            вам в течение 15 минут
        </p>

        <div class="the_form_item">

            <input type="text" name="{$formID}_name"  placeholder="Имя">
        </div>

        <div class="the_form_item">

            <input type="text" name="{$formID}_phone" class="masked" data-mask="+# ### ### ## ##" placeholder="+7 812 956 65 66">
        </div>

        <div class="the_form_item">
            <input type="text" name="{$formID}_time" placeholder="13:00 - 14:00">
        </div>

        <div class="accept" id="sf_{$formID}_accept">
            <input type="checkbox" id="{$formID}_accept" name="{$formID}_accept" checked style="display:none;">

            <label class="checkbox1_label" for="{$formID}_accept">
                <svg width="18px" height="18px" viewBox="0 0 18 18">
                    <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                    <polyline points="1 9 7 14 15 4"></polyline>
                </svg>
                <!--noindex--><span>Я согласен <a href="/policy" target="_blank">с политикой конфиденциальности</a></span><!--/noindex-->
            </label>
        </div>

        <div class="the_form_item the_form_item_submit">
            <button id="{$formID}_form_submit" type="submit">Отправить</button>
        </div>

    </form>
</div>