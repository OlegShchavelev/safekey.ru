<section class="py-5">
    <div class="container">
        {if $title ?}
            <h2>{$title}</h2>
        {/if}
        <div class="row">
            <div class="col-lg-{'template' | resource == 16 ? ($display_form == 1 ? '8' : '12') : ($display_form == 1 ? '6' : '12')}">
                <div class="faq_block">
                    {foreach $items as $item}
                        <div class="faq_item">
                            <div class="faq_item_head">
                                <a href="#" class="title">
                                    <span>{$item.question}</span>
                                    <i class="close"></i>
                                </a>
                            </div>

                            <div class="faq_item_content" style="display: none;">
                                {$item.answer}
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
            {if $display_form == 1}
            <div class="col-lg-{'template' | resource == 16 ? '4' : '6'} mt-4 mt-lg-0">
                {'!mvtForms2' | snippet : [
                'form' => 'questions'
                ]}
            </div>
            {/if}
        </div>
    </div>
</section>