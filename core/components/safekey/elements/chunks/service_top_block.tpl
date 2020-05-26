{if $_modx->resource.section_hero_title && $_modx->resource.section_hero_price}
<div class="service_top_block">
    <div class="img">
        <img src="{$_modx->resource.section_hero_img}" alt="" />
    </div>

    <div class="caption">
        <div class="caption_content">
            {if $_modx->resource.section_hero_title}
            <p class="title">
                {$_modx->resource.section_hero_title}
            </p>
            {/if}

            {if $_modx->resource.section_hero_price}
            <p class="price">от {$_modx->resource.section_hero_price} р.</p>
            {/if}

            {if $_modx->resource.section_hero_introtext}
            <div class="caption_description">
                <p>
                    {$_modx->resource.section_hero_introtext}
                </p>

                <a href="#">Читать дальше</a>
            </div>
            {/if}

            {set $rows = json_decode($_modx->resource.section_hero_advantage, true)}

            <ul>
            {foreach $rows as $row}
                <li>{$row.name}</li>
            {/foreach}
            </ul>

        </div>
    </div><!--/caption-->

    {'!mvtForms2' | snippet : ['form'=>'hero']}

</div><!--/service_top_block-->
{/if}