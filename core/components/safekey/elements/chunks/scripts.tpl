{$_modx->getPlaceholder('MinifyX.javascript')}

{if $_modx->resource.id == 8 }
    <script type="text/javascript" src="https://api-maps.yandex.ru/2.1/?lang=ru_RU"></script>
{/if}
<script src="{'assets_url' | option}components/safekey/dist/vendor/maska/maska.js"></script>
<script src="{'assets_url' | option}components/safekey/dist/js/theme.js"></script>

<script>
    // ------------------------------------------------------- //
    //   Inject SVG Sprite -
    //   see more here
    //   https://css-tricks.com/ajaxing-svg-sprite/
    // ------------------------------------------------------ //
    function injectSvgSprite(path) {
        var ajax = new XMLHttpRequest();
        ajax.open("GET", path, true);
        ajax.send();
        ajax.onload = function(e) {
            var div = document.createElement("div");
            div.className = 'd-none';
            div.innerHTML = ajax.responseText;
            document.body.insertBefore(div, document.body.childNodes[0]);
        }
    }
    // this is set to Bootstrapious website as you cannot
    // inject local SVG sprite (using only 'icons/orion-svg-sprite.svg' path)
    // while using file:// protocol
    // pls don't forget to change to your domain :)
    injectSvgSprite('{'assets_url' | option}template/icons/dsms-svg-sprite.svg')
</script>

{'!ym' | snippet}