<?php

//    return [
//        'toEmail'             => 'bond@007.com',
//        'prependSubject'      => '',
//        'prependSender'       => '',
//        'allowAttachments'    => false,
//        'successFlashMessage' => 'Message sent!'
//    ];

    $config = [];
    $request = Craft::$app->request;

    if (
        !$request->getIsConsoleRequest() &&
        ($toEmail = $request->getValidatedBodyParam('toEmail')) !== null
    ) {
        $config['toEmail'] = $toEmail;
    }

    return $config;