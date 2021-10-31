{foreach $items as $item}
<div class="contacts_block_item">
    <div class="img"><img src="{$item.icon}" alt="{$item.label}" /></div>

    <div class="text">
        <p class="title">{$item.label}</p>

        {if $item.type_value == 'phone'}

            <p class="phone">
                <a href="tel:{$item.value | preg_replace:'/[^0-9.+]|/': ''}">{$item.value}</a>
            </p>

        {/if}

        {if $item.type_value == 'text_field'}

            <p>{$item.value}</p>

        {/if}

        {if $item.type_value == 'email'}

            <p class="mail">
                <a href="mailto:{$item.value}">{$item.value}</a>
            </p>

        {/if}

    </div>
</div>
{/foreach}