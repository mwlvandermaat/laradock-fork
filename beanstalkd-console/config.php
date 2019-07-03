<?php
$GLOBALS['config'] = array(
  /**
   * List of servers available for all users
   */
  'servers' => array( /* 'Local Beanstalkd' => 'beanstalk://localhost:11300', ... */),
  /**
   * Saved samples jobs are kept in this file, must be writable
   */
  'storage' => dirname(__FILE__) . DIRECTORY_SEPARATOR . 'storage.json',
  /**
   * Optional Basic Authentication
   */
  'auth' => array(
    'enabled' => getenv('BEANSTALKD_CONSOLE_AUTH'),
    'username' => getenv('BEANSTALKD_CONSOLE_AUTH_USERNAME'),
    'password' => getenv('BEANSTALKD_CONSOLE_AUTH_PASSWORD'),
  ),
  /**
   * Version number
   */
  'version' => '1.7.10',
);
