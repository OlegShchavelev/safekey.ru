{foreach $coords as $key => $item}
    {set $coord = $item.coords | split : ','}
    <button data-pin-coords1="{$coord[0]}" data-pin-coords2="{$coord[1]}">{$key}</button>
{/foreach}