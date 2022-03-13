{set $tv_res = 17 | resource: 'structure'}
{set $tv_id = $id}
{set $rows = $tv_res | fromJSON}

{foreach $rows as $row}
    {if $tv_id == $row.resourse}
        {set $dropdown = 1}
    {/if}
{/foreach}

{if $dropdown == 1}
    <li class="{$classnames}">
        <a data-toggle="menu_id_{$id}" href="{$link}" {$attributes}>
        <span>
            {if $icontv ?}
                <b>
                    <svg class="svg-icon">
                        <use xlink:href="#icon-{$icontv}"></use>
                    </svg>
                </b>
            {/if}
            {$menutitle}
        </span>
        </a>

        {*
        <div class="ul_sub_wrap" data-toggle="menu_id_{$id}">
            <ul class="header_menu_mobile_sub_categories_ul has_icons clearafter">
                {foreach $rows as $row}
                    {if $tv_id == $row.resourse}
                        {set $section_menu = $row.level | fromJSON}
                        {foreach $section_menu as $section}
                            {set $categories_menu = $section.categories | fromJSON}
                            {foreach $categories_menu as $cat index=$index}
                                <li>
                                    <div class="sub_wrap_subdivision">
                                        <div class="sub_wrap_subdivision_item">

                                            <p class="sub_wrap_title">{$cat.name}</p>

                                            <ul>
                                                {set $item_menu = $cat.item | fromJSON}
                                                {foreach  $item_menu as $item}
                                                    <li>
                                                        <a href="#">{$item.title}</a>
                                                    </li>
                                                {/foreach}
                                            </ul>

                                        </div>
                                    </div>
                                </li>
                            {/foreach}
                            <!--/ul_sub_wrap katalog_sub_wrap-->
                        {/foreach}
                    {/if}
                {/foreach}
            </ul>
        </div> *}
    </li>
{else}
    <li class="{$classnames ~~ 'direct_ref'}">
        <a data-toggle="menu_id_{$id}" href="{$link}" {$attributes}>
        <span>
            {if $icontv ?}
                <b>
                    <svg class="svg-icon">
                        <use xlink:href="#icon-{$icontv}"></use>
                    </svg>
                </b>
            {/if}
            {$menutitle}
        </span>
        </a>
    </li>
{/if}