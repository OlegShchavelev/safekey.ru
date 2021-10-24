<?php
switch ($modx->event->name) {
    case 'MvtFormsAfterCheck':

        $validatePhone = iconv_strlen($data[$data['form'].'_phone']);
        if ($validatePhone < 16) {
            array_push($errors, $data['form'].'_phone');
        }
        $modx->event->output($errors);
        break;
}