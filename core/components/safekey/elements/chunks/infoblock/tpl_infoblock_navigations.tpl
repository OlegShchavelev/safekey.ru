{foreach $positions as $position}
    <section class="service-navigations title-transform-none my-5">
    <h2>Выезжаем во все районы Санкт-Петербурга</h2>
        <ul class="list-group blue row">
            {foreach $position.items as $item}
                <li class="col-md-6 col-xl-4 pb-3">{$item.name} {if $item.description ?} – <span>{$item.description}</span>{/if}</li>
            {/foreach}
        </ul>
    </section>
{/foreach}