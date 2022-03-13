{set $tv_res = 17 | resource: 'structure'}
{set $tv_id = $id}
{set $rows = $tv_res | fromJSON}

{foreach $rows as $row}
{if $tv_id == $row.resourse}
    {set $dropdown = ' menu-dropdown'}
{/if}
{/foreach}

<li class="menu-item {$dropdown}">
    <a class="menu-link" href="{$link}">
        <svg class="svg-icon">
            <use xlink:href="#icon-{$icontv}"></use>
        </svg>
        {$menutitle}
    </a>
    {foreach $rows as $row}
        {if $tv_id == $row.resourse}
            <div class="megamenu sub-col-{$row.col}">
                <div class="row">
                    {set $section_menu = $row.level | fromJSON}
                    {foreach $section_menu as $section}
                        <div class="col-12 col-xl-{if $row.col == 1}12{/if}{if $row.col == 2}6{/if}{if $row.col == 3}4{/if}{if $row.col == 4}3{/if} {if $section.no_title == 1}no-title{/if}">
                            <div class="menu-nav-block">
                                {set $categories_menu = $section.categories | fromJSON}
                                {foreach $categories_menu as $cat index=$index}
                                    {if $cat.no_title == 0}
                                        <div class="menu-nav-title {$index > 0 ? 'mt-4' : 'mt-0'}">
                                            {if $cat.link ?}
                                                <a href="{$cat.link}">{$cat.name}</a>
                                            {else}
                                                {$cat.name}
                                            {/if}
                                        </div>
                                    {/if}
                                    {set $banner_menu = $cat.ban | fromJSON }
                                    {foreach $banner_menu as $ban}
                                        <div class="card">
                                            <a href="{$ban.link_id == '' ?: $ban.link_id | url}">
                                                <img class="img-banner" src="{$ban.img_ban}">
                                            </a>
                                        </div>
                                    {/foreach}
                                    <ul class="menu-nav mb-5">
                                        {set $item_menu = $cat.item | fromJSON}
                                        {foreach  $item_menu as $item}
                                            <li class="menu-nav-item">
                                                <a href="{($item.id | url) ?: $item.url}"
                                                   class="menu-nav-link{$item.all == 1 ? ' mt-4 menu-show-link' : ''}">{$item.title}</a>
                                            </li>
                                        {/foreach}
                                    </ul>
                                {/foreach}
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        {/if}
    {/foreach}
</li>
