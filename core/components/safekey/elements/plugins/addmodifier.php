<?php
/** @var modX $modx */
switch ($modx->event->name) {
    case 'pdoToolsOnFenomInit':

        /**
         * @param $input
         * @return string|string[]|null
         * @var Fenom $fenom
         */

        $fenom->addModifier('dsmc_tv', function ($input) use ($modx) {
            if ($input) {
                return $modx->resource->getTVValue($input);
            }
        });

        $fenom->addModifier('dsmc_list', function ($input) {
            if ($input) {
                $crlf = "\n";
                $lines = [];
                $lines = explode($crlf, $input);

                $output = '<ul class="list list-style-none">';
                foreach ($lines as $line) {
                    $output .= '<li>' . $line . '</li>';
                }
                $output .= '</ul>';

                return $output;
            }
        });
        break;
}