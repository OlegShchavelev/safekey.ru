<div class="card card-form card-bg-light">
    <div class="card-body">
        <div class="card-text card-icon">
            <svg class="svg-icon svg-question">
                <use xlink:href="#icon-question"></use>
            </svg>
        </div>
        <div class="card-title">
            <h3 class="text-center">{$formName}</h3>
        </div>
        <div class="card-text card-description text-center">
            {$formDescription}
        </div>
        <form method="post" class="mvtForm2" id="{$formID}_form">
            <input type="hidden" name="{$formID}_resource" value="{'id' | resource}">
            <input type="hidden" name="token" value="{$token}">
            <input type="hidden" name="form" value="{$formID}">

            <input class="form-control" name="{$formID}_name" placeholder="Ваше имя">
            <input class="form-control masked" name="{$formID}_phone" data-mask="+# ### ### ## ##" placeholder="+7 812 956 65 66">

            <div class="form-group">
                <input type="checkbox" id="{$formID}_accept" name="{$formID}_accept" checked style="display:none;">
                <label class="checkbox1_label" checked="" for="{$formID}_accept">
                    <svg width="18px" height="18px" viewBox="0 0 18 18">
                        <path d="M1,9 L1,3.5 C1,2 2,1 3.5,1 L14.5,1 C16,1 17,2 17,3.5 L17,14.5 C17,16 16,17 14.5,17 L3.5,17 C2,17 1,16 1,14.5 L1,9 Z"></path>
                        <polyline points="1 9 7 14 15 4"></polyline>
                    </svg>
                    <!--noindex--><span>Я согласен с <a href="{'114' | url}">политикой конфиденциальности</a></span><!--/noindex-->
                </label>
            </div>

            <div class="form-group">
                <button type="submit" class="btn btn-orange" id="{$formID}_form_submit">Отправить</button>
            </div>

        </form>
    </div>
</div>