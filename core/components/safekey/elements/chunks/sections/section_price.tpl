{set $rows = json_decode($_modx->resource.section_price, true)}

{if $_modx->resource.section_price ?}
<section class="service-price title-transform-none my-5">
    <h2>Цены вскрытия разных замков</h2>
    <div class="card-price">
        <div class="row">

            {foreach $rows as $row}

                <div class="col-md-6 pt-3 pb-2 py-md-4 title border-bottom-dashed">
                    {$row.name}
                </div>
                <div class="col-md-6 pb-3 pt-2 py-md-4 price border-bottom-dashed">
                    от {$row.price | number : 0 : '.' : ' '} р.
                </div>

            {/foreach}

        </div>
    </div>
</section>
{/if}