<?php
return [
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' =>
                "mysql:host={$_ENV['APP_MYSQL_PORT_3306_TCP_ADDR']};"
                . "port={$_ENV['APP_MYSQL_PORT_3306_TCP_ADDR']};"
                . "dbname={$_ENV['MYSQL_ENV_MYSQL_DATABASE']}",
            'username' => 'root',
            'password' => $_ENV['MYSQL_ENV_MYSQL_ROOT_PASSWORD'],
            'charset' => 'utf8',
        ],
        'mailer' => [
            'class' => 'yii\swiftmailer\Mailer',
            'viewPath' => '@common/mail',
            // send all mails to a file by default. You have to set
            // 'useFileTransport' to false and configure a transport
            // for the mailer to send real emails.
            'useFileTransport' => true,
        ],
    ],
];
