{foreach $positions as $position}
<section class="service-reviews title-transform-none my-5">
    <h2>{$position.name}</h2>
    <div class="row">
        <div class="col-lg-10 mx-auto">
            <div class="reviews_slider">
                {foreach $position.items as $item}
                    <div class="card-review d-flex flex-column flex-xl-row">
                        <div class="image col-12 col-xl-3">
                            <img src="assets/cache_image/images/0/safekey-dver-hran_150x150_8d2.jpg">
                        </div>
                        <div class="review-content col-12 col-xl-9 ml-3 mt-5 mt-lg-0">
                            <div class="title">{$item.name}</div>
                            <div class="description">{$item.content}
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
    <div class="review-all py-3 my-5">
        <div class="d-flex align-items-center row">
            <div class="col-12 col-xl-3 label">Больше отзывов на:</div>
            <div class="col-12 col-xl-2"><img class="yandex-image" src="vendor/yandex_review.png"</div>
        </div>
    </div>
</section>
{/foreach}