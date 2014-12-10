<?php

/*
 +------------------------------------------------------------------------+
 | Phosphorum                                                             |
 +------------------------------------------------------------------------+
 | Copyright (c) 2013-2014 Phalcon Team and contributors                  |
 +------------------------------------------------------------------------+
 | This source file is subject to the New BSD License that is bundled     |
 | with this package in the file docs/LICENSE.txt.                        |
 |                                                                        |
 | If you did not receive a copy of the license and are unable to         |
 | obtain it through the world-wide-web, please send an email             |
 | to license@phalconphp.com so we can send you a copy immediately.       |
 +------------------------------------------------------------------------+
*/

namespace Phosphorum\Monolog;

use Monolog\Logger;
use Monolog\Handler\GelfHandler;
use Gelf\MessagePublisher;
use Monolog\Handler\SlackHandler;
use Phalcon\Mvc\User\Component;

/**
 * Class to configure and return a Monolog to Slack
 * 
 * @return Monolog\loger
 */
class Slack extends Component
{

 
    /**
     * Method to return the Monolog to slack
     * 
     * @return Monolog\Logger
     */
    public  function run($message)
    {

        $room     = $this->config->slack->room;
        $token    = $this->config->slack->token;
        $username = $this->config->slack->username;

        $slack = new SlackHandler($token, $room, $username, false, Logger::ERROR, true);
        $log = new Logger('Phalcon Tip');

        $log->pushHandler($slack);
        $log->addError($message);
        $log->error($message);
    }
}

