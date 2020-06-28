{foreach $positions as $position}
    <section class="service-navigations title-transform-none my-5">
    <h2>Быстрый выезд в любые районы города</h2>
        <ul class="list-group blue row">
            {foreach $position.items as $item}
                <li class="col-md-6 col-xl-4 pb-3">{$item.name} – <span>20 минут</span></li>
            {/foreach}
        </ul>
    </section>
{/foreach}