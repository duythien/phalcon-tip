-- phpMyAdmin SQL Dump
-- version 4.2.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 23, 2014 at 04:28 PM
-- Server version: 5.7.4-m14
-- PHP Version: 5.5.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phalcontip`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE IF NOT EXISTS `activities` (
`id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `type` char(1) NOT NULL,
  `posts_id` int(10) unsigned DEFAULT NULL,
  `created_at` int(18) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `users_id`, `type`, `posts_id`, `created_at`) VALUES
(1, 1, 'U', NULL, 1415796501),
(2, 1, 'P', 1, 1415796580),
(3, 1, 'P', 2, 1415804141),
(4, 1, 'P', 3, 1415805054),
(5, 2, 'U', NULL, 1415805988),
(6, 2, 'P', 4, 1415806683),
(7, 1, 'C', 4, 1415807519),
(8, 1, 'P', 5, 1415842042),
(9, 1, 'P', 6, 1415842771),
(10, 1, 'P', 7, 1415848780),
(11, 1, 'P', 8, 1415849244),
(12, 2, 'P', 9, 1415863877),
(13, 2, 'P', 10, 1415864169),
(14, 2, 'P', 11, 1415864653),
(15, 1, 'P', 12, 1415871173),
(16, 3, 'U', NULL, 1415971642),
(17, 2, 'C', 4, 1415987507),
(18, 4, 'U', NULL, 1415998518),
(19, 4, 'P', 13, 1415998797);

-- --------------------------------------------------------

--
-- Table structure for table `activity_notifications`
--

CREATE TABLE IF NOT EXISTS `activity_notifications` (
`id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `posts_id` int(10) unsigned NOT NULL,
  `posts_replies_id` int(10) unsigned DEFAULT NULL,
  `type` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `users_origin_id` int(10) unsigned DEFAULT NULL,
  `created_at` int(18) unsigned DEFAULT NULL,
  `was_read` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `extra` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `activity_notifications`
--

INSERT INTO `activity_notifications` (`id`, `users_id`, `posts_id`, `posts_replies_id`, `type`, `users_origin_id`, `created_at`, `was_read`, `extra`) VALUES
(1, 2, 4, 1, 'C', 1, 1415807519, 'Y', NULL),
(2, 1, 4, 2, 'C', 2, 1415987507, 'N', NULL),
(3, 1, 12, NULL, 'P', 2, 1415987529, 'N', NULL),
(4, 4, 13, NULL, 'P', 1, 1416016447, 'N', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(72) NOT NULL,
  `slug` varchar(32) DEFAULT NULL,
  `number_posts` int(10) unsigned DEFAULT NULL,
  `no_bounty` varchar(1) NOT NULL DEFAULT 'N',
  `no_digest` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `number_posts`, `no_bounty`, `no_digest`) VALUES
(1, 'News/Announcements', 'news-announcements', 3, 'N', 'N'),
(2, 'General', 'general', 1, 'N', 'N'),
(3, 'Installation', 'installation', NULL, 'N', 'N'),
(4, 'Development Tool', 'development-tool', 1, 'N', 'N'),
(5, 'Beginners', 'beginners', NULL, 'N', 'N'),
(6, 'Paginator', 'paginator', NULL, 'N', 'N'),
(7, 'Configuration', 'configuration', 1, 'N', 'N'),
(8, 'Security', 'security', NULL, 'N', 'N'),
(9, 'Annotations', 'annotations', NULL, 'N', 'N'),
(10, 'Jobs', 'jobs', NULL, 'N', 'N'),
(11, 'Tutorial', 'tutorial', 2, 'N', 'N'),
(12, 'ORM', 'orm', NULL, 'N', 'N'),
(13, 'MVC', 'mvc', 1, 'N', 'N'),
(14, 'Volt', 'volt', 1, 'N', 'N'),
(15, 'Cache', 'cache', 1, 'N', 'N'),
(16, 'Micro', 'micro', NULL, 'N', 'N'),
(17, 'ODM', 'odm', NULL, 'N', 'N'),
(18, 'Event', 'event', NULL, 'N', 'N'),
(19, 'External Tool', 'external-tool', NULL, 'N', 'N'),
(20, 'Database', 'database', 2, 'N', 'N'),
(21, 'ACL', 'acl', NULL, 'N', 'N'),
(22, 'Escaping/Filtering', 'escaping-filtering', 1, 'N', 'N'),
(23, 'HTTP Environment', 'http-environment', NULL, 'N', 'N'),
(24, 'Session', 'session', 1, 'N', 'N'),
(25, 'Routing', 'routing', 1, 'N', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `irclog`
--

CREATE TABLE IF NOT EXISTS `irclog` (
`id` int(10) unsigned NOT NULL,
  `who` varchar(64) NOT NULL,
  `content` text,
  `datelog` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
`id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `posts_id` int(10) unsigned NOT NULL,
  `posts_replies_id` int(10) unsigned DEFAULT NULL,
  `type` char(1) NOT NULL,
  `created_at` int(18) unsigned DEFAULT NULL,
  `modified_at` int(18) unsigned DEFAULT NULL,
  `message_id` char(60) DEFAULT NULL,
  `sent` char(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `users_id`, `posts_id`, `posts_replies_id`, `type`, `created_at`, `modified_at`, `message_id`, `sent`) VALUES
(1, 2, 4, 1, 'C', 1415807519, NULL, NULL, 'N'),
(2, 1, 4, 2, 'C', 1415987507, NULL, NULL, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `notifications_bounces`
--

CREATE TABLE IF NOT EXISTS `notifications_bounces` (
`id` int(10) unsigned NOT NULL,
  `email` varchar(120) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `diagnostic` varchar(120) DEFAULT NULL,
  `created_at` int(10) unsigned NOT NULL,
  `reported` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
`id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `categories_id` int(10) unsigned NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(64) NOT NULL,
  `content` text,
  `number_views` int(3) unsigned NOT NULL,
  `number_replies` int(3) unsigned NOT NULL,
  `votes_up` int(10) unsigned DEFAULT NULL,
  `votes_down` int(10) unsigned DEFAULT NULL,
  `sticked` char(1) DEFAULT 'N',
  `created_at` int(18) unsigned DEFAULT NULL,
  `modified_at` int(18) unsigned DEFAULT NULL,
  `edited_at` int(18) unsigned DEFAULT NULL,
  `status` char(1) DEFAULT 'A',
  `locked` char(1) DEFAULT 'N',
  `deleted` int(3) DEFAULT '0',
  `accepted_answer` char(1) DEFAULT 'N'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `users_id`, `categories_id`, `title`, `slug`, `content`, `number_views`, `number_replies`, `votes_up`, `votes_down`, `sticked`, `created_at`, `modified_at`, `edited_at`, `status`, `locked`, `deleted`, `accepted_answer`) VALUES
(1, 1, 13, 'Bundling Custom Components', 'bundling-custom-components', 'Here is a nice way to bundle your stuff up. I like it because it makes it easy to share methods between controllers and get rid of code duplication.I namespaced all my custom components so I don''t get them confused with a Model name in the future.```php	$di->setShared(''component'', function() {        $obj = new stdClass();        $obj->menu = new \\Component\\Menu();        $obj->helper = new \\Component\\Helper();        $obj->user = new \\Component\\User();        return $obj;    });```Now you can access anywhere:```php	$this->component->helper->method(123);	//or	{{ component.helper.method(123) }}```', 16, 0, NULL, NULL, 'N', 1415796580, 1415796580, NULL, 'A', 'N', 0, 'N'),
(2, 1, 4, 'Phalcon auto-completion in IDE(Eclipse)', 'phalcon-autocompletion-in-ideeclipse', 'In order to do that, first you need to download Phalcon tool [here](https://github.com/phalcon/phalcon-devtools)\r\n\r\n```php\r\n	git clone https://github.com/phalcon/phalcon-devtools.git\r\n\r\n```\r\n\r\nThen, In Eclipse, you just need to add devtool path : phalcon-devtools/ide/PHALCON_VERSION by adding external Source Folder in PHP include Path / Libraries tab.', 16, 0, NULL, NULL, 'N', 1415804141, 1415804141, NULL, 'A', 'N', 0, 'N'),
(3, 1, 11, 'How do you customize the HTML template for flash', 'how-do-you-customize-the-html-template-for-flash', 'You must to create a custom class inheriting from Phalcon\\Flash\\Direct to alter the message adding the close div:\r\n\r\n```php\r\n	class MyFlash extends Phalcon\\Flash\\Direct\r\n	{\r\n	    public function message($type, $message)\r\n	    {\r\n	        $message .= '' <div class="close"></div>'';\r\n	        parent::message($type, $message);\r\n	    }\r\n	}\r\n```\r\n\r\nThen, you must to setup it in file autoload\r\n\r\n```php\r\n	$di->set(''flash'', function(){\r\n    	return new MyFlash();\r\n	})\r\n\r\n```\r\n\r\nOr, you can adding button code to your message:\r\n\r\n```php\r\n$this->flash->success(''<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>My Message'');\r\n\r\n```', 9, 0, NULL, NULL, 'N', 1415805054, 1415805054, NULL, 'A', 'N', 0, 'N'),
(5, 1, 25, 'Setup a error page in Phalcon', 'setup-a-error-page-in-phalcon', 'There many way setup it, if you want to simple to do that just insert code below into  file index.php\r\n\r\n```php\r\n\r\n	$response = new Phalcon\\Http\\ResponseResponse();\r\n    $response->redirect(''505.html'');\r\n    $response->send();\r\n```\r\n\r\nif you want to some complex such as  handle the 404 (Not Found) and 500 (Internal Server Error) within the application. There''s a service you can use which basically you can override key parts of the event management system. You''ll want to hook into the ''dispatch:beforeException'' event, and tell the application to do something else.\r\n\r\n\r\n```php\r\n	//Registering a dispatcher\r\n        $di->set(''dispatcher'', function() {\r\n            //Create/Get an EventManager\r\n            $eventsManager = new \\Phalcon\\Events\\Manager();\r\n            //Attach a listener\r\n            $eventsManager->attach("dispatch", function($event, $dispatcher, $exception) {\r\n                //controller or action doesn''t exist\r\n                if ($event->getType() == ''beforeException'') {\r\n                    switch ($exception->getCode()) {\r\n                        case \\Phalcon\\Dispatcher::EXCEPTION_HANDLER_NOT_FOUND:\r\n                        case \\Phalcon\\Dispatcher::EXCEPTION_ACTION_NOT_FOUND:\r\n                            $dispatcher->forward(array(\r\n                                ''controller'' => ''index'',\r\n                                ''action'' => ''notFound''\r\n                            ));\r\n                            return false;\r\n                    }\r\n                }\r\n            });\r\n\r\n            $dispatcher = new \\Phalcon\\Mvc\\Dispatcher();\r\n            //Set default namespace to frontend module\r\n            $dispatcher->setDefaultNamespace("Las\\Frontend\\Controllers");\r\n            //Bind the EventsManager to the dispatcher\r\n            $dispatcher->setEventsManager($eventsManager);\r\n\r\n            return $dispatcher;\r\n        });\r\n```\r\nText Snippet:\r\n\r\n```php\r\n	\\Phalcon\\Mvc\\Dispatcher::EXCEPTION_HANDLER_NOT_FOUND  - code 2\r\n```\r\nor Text Snippet:\r\n\r\n```php\r\n	\\Phalcon\\Mvc\\Dispatcher::Dispatcher::EXCEPTION_ACTION_NOT_FOUND - code 5 \r\n```\r\n\r\nThen my ErrorController:\r\n\r\n```php\r\n	 <?php\r\n	class ErrorController extends \\Phalcon\\Mvc\\Controller\r\n	{\r\n	  public function notFoundAction()\r\n	  {\r\n		  // The response is already populated with a 404 Not Found header.\r\n	  }\r\n  \r\n	  public function uncaughtExceptionAction()\r\n	  {\r\n		  $this->response->setStatusCode(500, ''Internal Server Error'');\r\n	  }\r\n} \r\n```', 16, 0, NULL, NULL, 'N', 1415842042, 1415842042, NULL, 'A', 'N', 0, 'N'),
(6, 1, 20, 'Setup default database Mongodb in phalcon', 'setup-default-database-mongodb-in-phalcon', 'You start by adding a connection from your MongoDB database to your Dependency Injection container, as in the following code snippet:\r\n\r\n```php\r\n	$di->set(''mongo'', function() {\r\n   		 $mongo = new Mongo();\r\n    	return $mongo->selectDb("blog");}, true);\r\n```\r\nThis will be a connection to the default localhost MongoDB instance running on the default port. If mongodb of you requied password you just code like this\r\n\r\n```php\r\n    $di->set(''MongoDB'', function () use ($config) {\r\n		$mongo = new MongoClient("mongodb://" .\r\n		   $config->database->mongo->username . ":"\r\n		   $config->database->mongo->password . "@" . \r\n		   $config->database->mongo->host,array("db" => $config->database->mongo->dbname)\r\n		);\r\n		return $mongo->selectDb($config->database->mongo->dbname);\r\n    }, TRUE);\r\n```	', 28, 0, NULL, NULL, 'N', 1415842771, 1415842771, NULL, 'A', 'N', 0, 'N'),
(7, 1, 20, 'Multiple DB Connections in Phalcon', 'multiple-db-connections-in-phalcon', 'In Phalcon, all models can belong to the same database connection or have an individual one. Actually, when [Phalcon\\Mvc\\Model](http://docs.phalconphp.com/en/latest/api/Phalcon_Mvc_Model.html) needs to connect to the database it requests the “db” service in the application’s services container.\r\n\r\n\r\n```php\r\n	//This service returns a MySQL database\r\n    $di->set(''dbMysql'', function() {\r\n	   return new \\Phalcon\\Db\\Adapter\\Pdo\\Mysql(array(\r\n		  "host" => "localhost",\r\n		  "username" => "root",\r\n		  "password" => "secret",\r\n		  "dbname" => "invo"\r\n	  ));\r\n	});\r\n\r\n	//This service returns a PostgreSQL database\r\n	$di->set(''dbPostgres'', function() {\r\n		 return new \\Phalcon\\Db\\Adapter\\Pdo\\PostgreSQL(array(\r\n			"host" => "localhost",\r\n			"username" => "postgres",\r\n			"password" => "",\r\n			"dbname" => "invo"\r\n		));\r\n	});\r\n\r\n```\r\n\r\n###Specify Connection\r\nNow that we have a 2nd database connection setup - how do we use it in code?In the Initialize method, we define the connection service db you want to it  for the model:\r\n\r\n```php\r\n	<?php\r\n\r\n  class Robots extends \\Phalcon\\Mvc\\Model\r\n  {\r\n  \r\n	  public function initialize()\r\n	  {\r\n		  $this->setConnectionService(''dbPostgres'');\r\n	  }\r\n  \r\n  }\r\n```\r\n\r\n', 27, 0, NULL, NULL, 'N', 1415848780, 1415848780, 1415894181, 'A', 'N', 0, 'N'),
(8, 1, 2, 'Setting up Phalcon\\Debug', 'setting-up-phalcondebug', 'Phalcon provides a debug component that allows the developer to easily find errors produced in an application created with the framework\r\n\r\nThe following example explains how it works:\r\n\r\nTo add Phalcon\\Debug, we are going to open up our bootstrap file, index.php file located at public, and add a couple of lines of code at the beginning of our code, remove the try-catch construction:\r\n\r\n```php\r\n	error_reporting(E_ALL);\r\n    \r\n	$debug = new \\Phalcon\\Debug();\r\n	$debug->listen();\r\n    [...]\r\n	do something\r\n```', 15, 0, NULL, NULL, 'N', 1415849244, 1415849244, NULL, 'A', 'N', 0, 'N'),
(9, 1, 22, 'Filtering and sanitizing data', 'filtering-and-sanitizing-data', 'Sanitizing is the process which removes specific characters from a value, that are not required or desired by the user or application. By sanitizing input we ensure that application integrity will be intact.\r\n\r\n```php\r\n	<?php\r\n\r\n	$filter = new \\Phalcon\\Filter();\r\n	\r\n	// returns "someone@example.com"\r\n	$filter->sanitize("some(one)@exa\\mple.com", "email");\r\n	\r\n	// returns "hello"\r\n	$filter->sanitize("hello<<", "string");\r\n	\r\n	// returns "100019"\r\n	$filter->sanitize("!100a019", "int");\r\n	\r\n	// returns "100019.01"\r\n	$filter->sanitize("!100a019.01a", "float");\r\n```\r\nThe Phalcon\\Filter component provides a set of commonly needed data filters. It provides object oriented wrappers to the php filter extension. Also allows the developer to define his/her own filters\r\n\r\n```php\r\n 	<?php\r\n	$filter = new Phalcon\\Filter();\r\n	$filter->sanitize("some(one)@exa\\\\mple.com", "email"); // returns "someone@example.com"\r\n	$filter->sanitize("hello<<", "string"); // returns "hello"\r\n	$filter->sanitize("!100a019", "int"); // returns "100019"\r\n	$filter->sanitize("!100a019.01a", "float"); // returns "100019.01"\r\n\r\n```', 25, 0, NULL, NULL, 'N', 1415863876, 1415863876, NULL, 'A', 'N', 0, 'N'),
(10, 1, 7, 'Setting a different location for Public path', 'setting-a-different-location-for-public-path', 'Sometimes, you have differences between your dev set-up and production set-up that requires you to be able to set a different value for public path. In your service.php and config file, just add the following code and you will be good.\r\n\r\n```php\r\n	<?php\r\n	return new \\Phalcon\\Config([\r\n		''application'' => array(\r\n        ''controllersDir'' => APP_PATH . ''/app/controllers/'',\r\n        ''modelsDir''      => APP_PATH . ''/app/models/'',\r\n        ''viewsDir''       => APP_PATH . ''/app/views/'',\r\n        ''pluginsDir''     => APP_PATH . ''/app/plugins/'',\r\n        ''libraryDir''     => APP_PATH . ''/app/library/'',\r\n        ''development''    => array(\r\n            ''staticBaseUri'' => ''/'',\r\n            ''baseUri''       => ''/''\r\n        ),\r\n        ''production''     => array(\r\n            ''staticBaseUri'' => ''http://static.phosphorum.com/'',\r\n            ''baseUri''       => ''/''\r\n        ),\r\n        ''debug''          => true\r\n    ),\r\n	\r\n	]);\r\n\r\n```\r\n\r\nThen in service file:\r\n\r\n```php\r\n	<?php\r\n	$di->set(\r\n    ''url'',\r\n    function () use ($config) {\r\n        $url = new UrlResolver();\r\n        if (!$config->application->debug) {\r\n            $url->setBaseUri($config->application->production->baseUri);\r\n            $url->setStaticBaseUri($config->application->production->staticBaseUri);\r\n        } else {\r\n            $url->setBaseUri($config->application->development->baseUri);\r\n            $url->setStaticBaseUri($config->application->development->staticBaseUri);\r\n        }\r\n        return $url;\r\n    },\r\n    true\r\n);\r\n```', 12, 0, NULL, NULL, 'N', 1415864169, 1415864169, NULL, 'A', 'N', 0, 'N'),
(11, 1, 14, 'Defined function of PHP in Volt', 'defined-function-of-php-in-volt', 'Volt functions act as string replacements and do not actually call the underlying function. Volt translates the function into the relevant string which in return is interpreted by PHP.\r\n\r\n```php\r\n\r\n	  /**\r\n	   * Setting up the view component\r\n	   */\r\n	  $di->set(''view'', function () use ($config) {\r\n  \r\n	  $view = new View();\r\n  \r\n	  $view->setViewsDir($config->application->viewsDir);\r\n  \r\n	  $view->registerEngines(array(\r\n		  ''.volt'' => function ($view, $di) use ($config) {\r\n  \r\n			  $volt = new VoltEngine($view, $di);\r\n			  $voltOptions = array(\r\n				  ''compiledPath'' => $config->application->cacheDir,\r\n				  ''compiledSeparator'' => ''_''\r\n			  );\r\n			  //load function php\r\n			  $compiler = $volt->getCompiler();\r\n			$compiler->addFunction(''shuffle'', ''str_shuffle'');\r\n			  return $volt;\r\n		  }\r\n	  ));\r\n  \r\n	  return $view;\r\n   }, true);\r\n\r\n```\r\nExample above it will  binds the function name *shuffle* in Volt to the PHP function *str_shuffle*\r\n', 29, 0, NULL, NULL, 'N', 1415864653, 1415864653, NULL, 'A', 'N', 0, 'N'),
(12, 1, 15, 'Setting up a cache service', 'setting-up-a-cache-service', 'In Phalcon, the cache consists of two parts, a frontend cache that handles cache expiration and transformation, and the backend cache that handles the reads and writes when requested to by the frontend. Here is an example of a cache service. We could simply add this to our service.php file.\r\n\r\n\r\n```php\r\n	<?php\r\n\r\n	//Set the models cache service\r\n	$di->set(''modelsCache'', function() {\r\n\r\n		//Cache data for one day by default\r\n		$frontCache = new \\Phalcon\\Cache\\Frontend\\Data(array(\r\n			"lifetime" => 86400\r\n		));\r\n	\r\n		//Memcached connection settings\r\n		$cache = new Phalcon\\Cache\\Backend\\Apc ($frontendcache, array(\r\n			''prefix'' => ''cache''\r\n		));\r\n	\r\n		return $cache;\r\n	});\r\n```\r\nThen in your models pass a ''cache'' parameter to tell the ORM the resultset must be cached:\r\n\r\n```php\r\n	<?php\r\n	// Get products without caching\r\n	$products = Products::find();\r\n	\r\n	// Just cache the resultset. The cache will expire in 1 hour (3600 seconds)\r\n	$products = Products::find(array(\r\n		"cache" => array("key" => "my-cache")\r\n	));\r\n	\r\n	// Cache the resultset for only for 5 minutes\r\n	$products = Products::find(array(\r\n		"cache" => array("key" => "my-cache", "lifetime" => 300)\r\n	));\r\n	\r\n	// Using a custom cache\r\n	$products = Products::find(array("cache" => $myCache));\r\n```', 31, 0, 1, NULL, 'N', 1415871173, 1415871173, 1415871205, 'A', 'N', 0, 'N'),
(13, 1, 24, 'Flashing old inputs', 'flashing-old-inputs', 'When I need to flash old inputs I do it like this\r\n\r\n```php\r\n	public function postSubmitAction()\r\n	{\r\n		$form = new MyForm();\r\n		if($this->request->isPost())\r\n    	{	\r\n			$model = new MyModel();\r\n			if($form->isValid())\r\n    		{\r\n				//save\r\n			}\r\n			else\r\n			{\r\n				//saving input values to session\r\n				 foreach($this->request->getPost() as $key=>$msg)\r\n    			{\r\n    				$this->persistent->$key = $msg;\r\n    			}\r\n				return $this->response->redirect(''/submit'');\r\n\r\n			}\r\n		}\r\n	}\r\n```		\r\n\r\n```php\r\n	public function getSubmitAction()\r\n    {	\r\n    	$form = new MyForm()\r\n		//if there are any persisten values show them and remove after they are shown\r\n    	if($this->session->has(__CLASS__))\r\n    	{\r\n	    	\\Phalcon\\Tag::setDefaults($this->session->get(__CLASS__));\r\n	    	$this->session->remove(__CLASS__);\r\n	  	}\r\n    	$this->view->setVar(''form'', $form);\r\n    }\r\n```', 6, 0, 1, NULL, 'N', 1415998797, 1415998797, 1415999130, 'A', 'N', 0, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `posts_bounties`
--

CREATE TABLE IF NOT EXISTS `posts_bounties` (
`id` int(10) unsigned NOT NULL,
  `posts_id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `posts_replies_id` int(10) unsigned NOT NULL,
  `points` int(10) unsigned NOT NULL,
  `created_at` int(18) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `posts_bounties`
--

INSERT INTO `posts_bounties` (`id`, `posts_id`, `users_id`, `posts_replies_id`, `points`, `created_at`) VALUES
(1, 4, 1, 1, 100, 1415807519);

-- --------------------------------------------------------

--
-- Table structure for table `posts_history`
--

CREATE TABLE IF NOT EXISTS `posts_history` (
`id` int(10) unsigned NOT NULL,
  `posts_id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `created_at` int(18) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=51 ;

--
-- Dumping data for table `posts_history`
--

INSERT INTO `posts_history` (`id`, `posts_id`, `users_id`, `created_at`, `content`) VALUES
(1, 1, 1, 1415796580, 'Here is a nice way to bundle your stuff up. I like it because it makes it easy to share methods between controllers and get rid of code duplication.\r\n\r\nI namespaced all my custom components so I don''t get them confused with a Model name in the future.\r\n\r\n```php\r\n\r\n	$di->setShared(''component'', function() {\r\n        $obj = new stdClass();\r\n        $obj->menu = new \\Component\\Menu();\r\n        $obj->helper = new \\Component\\Helper();\r\n        $obj->user = new \\Component\\User();\r\n        return $obj;\r\n    });\r\n```\r\n\r\nNow you can access anywhere:\r\n\r\n```php\r\n	$this->component->helper->method(123);\r\n	//or\r\n	{{ component.helper.method(123) }}\r\n```'),
(2, 1, 1, 1415796580, 'Here is a nice way to bundle your stuff up. I like it because it makes it easy to share methods between controllers and get rid of code duplication.\r\n\r\nI namespaced all my custom components so I don''t get them confused with a Model name in the future.\r\n\r\n```php\r\n\r\n	$di->setShared(''component'', function() {\r\n        $obj = new stdClass();\r\n        $obj->menu = new \\Component\\Menu();\r\n        $obj->helper = new \\Component\\Helper();\r\n        $obj->user = new \\Component\\User();\r\n        return $obj;\r\n    });\r\n```\r\n\r\nNow you can access anywhere:\r\n\r\n```php\r\n	$this->component->helper->method(123);\r\n	//or\r\n	{{ component.helper.method(123) }}\r\n```'),
(3, 2, 1, 1415804141, 'In order to do that, first you need to download Phalcon tool [here](https://github.com/phalcon/phalcon-devtools)\r\n\r\n```php\r\n	git clone https://github.com/phalcon/phalcon-devtools.git\r\n\r\n```\r\n\r\nThen, In Eclipse, you just need to add devtool path : phalcon-devtools/ide/PHALCON_VERSION by adding external Source Folder in PHP include Path / Libraries tab.'),
(4, 2, 1, 1415804141, 'In order to do that, first you need to download Phalcon tool [here](https://github.com/phalcon/phalcon-devtools)\r\n\r\n```php\r\n	git clone https://github.com/phalcon/phalcon-devtools.git\r\n\r\n```\r\n\r\nThen, In Eclipse, you just need to add devtool path : phalcon-devtools/ide/PHALCON_VERSION by adding external Source Folder in PHP include Path / Libraries tab.'),
(5, 3, 1, 1415805054, 'You must to create a custom class inheriting from Phalcon\\Flash\\Direct to alter the message adding the close div:\r\n\r\n```php\r\n	class MyFlash extends Phalcon\\Flash\\Direct\r\n	{\r\n	    public function message($type, $message)\r\n	    {\r\n	        $message .= '' <div class="close"></div>'';\r\n	        parent::message($type, $message);\r\n	    }\r\n	}\r\n```\r\n\r\nThen, you must to setup it in file autoload\r\n\r\n```php\r\n	$di->set(''flash'', function(){\r\n    	return new MyFlash();\r\n	})\r\n\r\n```\r\n\r\nOr, you can adding button code to your message:\r\n\r\n```php\r\n$this->flash->success(''<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>My Message'');\r\n\r\n```'),
(6, 3, 1, 1415805054, 'You must to create a custom class inheriting from Phalcon\\Flash\\Direct to alter the message adding the close div:\r\n\r\n```php\r\n	class MyFlash extends Phalcon\\Flash\\Direct\r\n	{\r\n	    public function message($type, $message)\r\n	    {\r\n	        $message .= '' <div class="close"></div>'';\r\n	        parent::message($type, $message);\r\n	    }\r\n	}\r\n```\r\n\r\nThen, you must to setup it in file autoload\r\n\r\n```php\r\n	$di->set(''flash'', function(){\r\n    	return new MyFlash();\r\n	})\r\n\r\n```\r\n\r\nOr, you can adding button code to your message:\r\n\r\n```php\r\n$this->flash->success(''<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>My Message'');\r\n\r\n```'),
(7, 4, 2, 1415806683, 'If you have a table user with some filed id, lastname, firstname, etc and you want to display fullname when render to be view, you can used code below. I assume you have a user model\r\n\r\nIn folder Form create it\r\n\r\n```php\r\n	$this->add(new Select(''user'', User::find(["columns" => "id,\r\n	        CONCAT(latsname, '' : '', firstname) as fullname"]),\r\n            array(\r\n                ''using''   => [''id'', ''fullname''],\r\n                ''required'' => true\r\n            )\r\n        ));\r\n```\r\nThen in view you need just call it\r\n\r\n```php\r\n   {{ form.render(''user'') }}\r\n```\r\nAlso understand form you can see example vokuro [here](https://github.com/phalcon/vokuro/tree/master/app/forms)'),
(8, 4, 2, 1415806683, 'If you have a table user with some filed id, lastname, firstname, etc and you want to display fullname when render to be view, you can used code below. I assume you have a user model\r\n\r\nIn folder Form create it\r\n\r\n```php\r\n	$this->add(new Select(''user'', User::find(["columns" => "id,\r\n	        CONCAT(latsname, '' : '', firstname) as fullname"]),\r\n            array(\r\n                ''using''   => [''id'', ''fullname''],\r\n                ''required'' => true\r\n            )\r\n        ));\r\n```\r\nThen in view you need just call it\r\n\r\n```php\r\n   {{ form.render(''user'') }}\r\n```\r\nAlso understand form you can see example vokuro [here](https://github.com/phalcon/vokuro/tree/master/app/forms)'),
(9, 4, 1, 1415807519, 'If you have a table user with some filed id, lastname, firstname, etc and you want to display fullname when render to be view, you can used code below. I assume you have a user model\r\n\r\nIn folder Form create it\r\n\r\n```php\r\n	$this->add(new Select(''user'', User::find(["columns" => "id,\r\n	        CONCAT(latsname, '' : '', firstname) as fullname"]),\r\n            array(\r\n                ''using''   => [''id'', ''fullname''],\r\n                ''required'' => true\r\n            )\r\n        ));\r\n```\r\nThen in view you need just call it\r\n\r\n```php\r\n   {{ form.render(''user'') }}\r\n```\r\nAlso understand form you can see example vokuro [here](https://github.com/phalcon/vokuro/tree/master/app/forms)'),
(10, 5, 1, 1415842042, 'There many way setup it, if you want to simple to do that just insert code below into  file index.php\r\n\r\n```php\r\n\r\n	$response = new Phalcon\\Http\\ResponseResponse();\r\n    $response->redirect(''505.html'');\r\n    $response->send();\r\n```\r\n\r\nif you want to some complex such as  handle the 404 (Not Found) and 500 (Internal Server Error) within the application. There''s a service you can use which basically you can override key parts of the event management system. You''ll want to hook into the ''dispatch:beforeException'' event, and tell the application to do something else.\r\n\r\n\r\n```php\r\n	//Registering a dispatcher\r\n        $di->set(''dispatcher'', function() {\r\n            //Create/Get an EventManager\r\n            $eventsManager = new \\Phalcon\\Events\\Manager();\r\n            //Attach a listener\r\n            $eventsManager->attach("dispatch", function($event, $dispatcher, $exception) {\r\n                //controller or action doesn''t exist\r\n                if ($event->getType() == ''beforeException'') {\r\n                    switch ($exception->getCode()) {\r\n                        case \\Phalcon\\Dispatcher::EXCEPTION_HANDLER_NOT_FOUND:\r\n                        case \\Phalcon\\Dispatcher::EXCEPTION_ACTION_NOT_FOUND:\r\n                            $dispatcher->forward(array(\r\n                                ''controller'' => ''index'',\r\n                                ''action'' => ''notFound''\r\n                            ));\r\n                            return false;\r\n                    }\r\n                }\r\n            });\r\n\r\n            $dispatcher = new \\Phalcon\\Mvc\\Dispatcher();\r\n            //Set default namespace to frontend module\r\n            $dispatcher->setDefaultNamespace("Las\\Frontend\\Controllers");\r\n            //Bind the EventsManager to the dispatcher\r\n            $dispatcher->setEventsManager($eventsManager);\r\n\r\n            return $dispatcher;\r\n        });\r\n```\r\nText Snippet:\r\n\r\n```php\r\n	\\Phalcon\\Mvc\\Dispatcher::EXCEPTION_HANDLER_NOT_FOUND  - code 2\r\n```\r\nor Text Snippet:\r\n\r\n```php\r\n	\\Phalcon\\Mvc\\Dispatcher::Dispatcher::EXCEPTION_ACTION_NOT_FOUND - code 5 \r\n```\r\n\r\nThen my ErrorController:\r\n\r\n```php\r\n	 <?php\r\n	class ErrorController extends \\Phalcon\\Mvc\\Controller\r\n	{\r\n	  public function notFoundAction()\r\n	  {\r\n		  // The response is already populated with a 404 Not Found header.\r\n	  }\r\n  \r\n	  public function uncaughtExceptionAction()\r\n	  {\r\n		  $this->response->setStatusCode(500, ''Internal Server Error'');\r\n	  }\r\n} \r\n```'),
(11, 5, 1, 1415842042, 'There many way setup it, if you want to simple to do that just insert code below into  file index.php\r\n\r\n```php\r\n\r\n	$response = new Phalcon\\Http\\ResponseResponse();\r\n    $response->redirect(''505.html'');\r\n    $response->send();\r\n```\r\n\r\nif you want to some complex such as  handle the 404 (Not Found) and 500 (Internal Server Error) within the application. There''s a service you can use which basically you can override key parts of the event management system. You''ll want to hook into the ''dispatch:beforeException'' event, and tell the application to do something else.\r\n\r\n\r\n```php\r\n	//Registering a dispatcher\r\n        $di->set(''dispatcher'', function() {\r\n            //Create/Get an EventManager\r\n            $eventsManager = new \\Phalcon\\Events\\Manager();\r\n            //Attach a listener\r\n            $eventsManager->attach("dispatch", function($event, $dispatcher, $exception) {\r\n                //controller or action doesn''t exist\r\n                if ($event->getType() == ''beforeException'') {\r\n                    switch ($exception->getCode()) {\r\n                        case \\Phalcon\\Dispatcher::EXCEPTION_HANDLER_NOT_FOUND:\r\n                        case \\Phalcon\\Dispatcher::EXCEPTION_ACTION_NOT_FOUND:\r\n                            $dispatcher->forward(array(\r\n                                ''controller'' => ''index'',\r\n                                ''action'' => ''notFound''\r\n                            ));\r\n                            return false;\r\n                    }\r\n                }\r\n            });\r\n\r\n            $dispatcher = new \\Phalcon\\Mvc\\Dispatcher();\r\n            //Set default namespace to frontend module\r\n            $dispatcher->setDefaultNamespace("Las\\Frontend\\Controllers");\r\n            //Bind the EventsManager to the dispatcher\r\n            $dispatcher->setEventsManager($eventsManager);\r\n\r\n            return $dispatcher;\r\n        });\r\n```\r\nText Snippet:\r\n\r\n```php\r\n	\\Phalcon\\Mvc\\Dispatcher::EXCEPTION_HANDLER_NOT_FOUND  - code 2\r\n```\r\nor Text Snippet:\r\n\r\n```php\r\n	\\Phalcon\\Mvc\\Dispatcher::Dispatcher::EXCEPTION_ACTION_NOT_FOUND - code 5 \r\n```\r\n\r\nThen my ErrorController:\r\n\r\n```php\r\n	 <?php\r\n	class ErrorController extends \\Phalcon\\Mvc\\Controller\r\n	{\r\n	  public function notFoundAction()\r\n	  {\r\n		  // The response is already populated with a 404 Not Found header.\r\n	  }\r\n  \r\n	  public function uncaughtExceptionAction()\r\n	  {\r\n		  $this->response->setStatusCode(500, ''Internal Server Error'');\r\n	  }\r\n} \r\n```'),
(12, 6, 1, 1415842771, 'You start by adding a connection from your MongoDB database to your Dependency Injection container, as in the following code snippet:\r\n\r\n```php\r\n	$di->set(''mongo'', function() {\r\n   		 $mongo = new Mongo();\r\n    	return $mongo->selectDb("blog");}, true);\r\n```\r\nThis will be a connection to the default localhost MongoDB instance running on the default port. If mongodb of you requied password you just code like this\r\n\r\n```php\r\n    $di->set(''MongoDB'', function () use ($config) {\r\n		$mongo = new MongoClient("mongodb://" .\r\n		   $config->database->mongo->username . ":"\r\n		   $config->database->mongo->password . "@" . \r\n		   $config->database->mongo->host,array("db" => $config->database->mongo->dbname)\r\n		);\r\n		return $mongo->selectDb($config->database->mongo->dbname);\r\n    }, TRUE);\r\n```	'),
(13, 6, 1, 1415842771, 'You start by adding a connection from your MongoDB database to your Dependency Injection container, as in the following code snippet:\r\n\r\n```php\r\n	$di->set(''mongo'', function() {\r\n   		 $mongo = new Mongo();\r\n    	return $mongo->selectDb("blog");}, true);\r\n```\r\nThis will be a connection to the default localhost MongoDB instance running on the default port. If mongodb of you requied password you just code like this\r\n\r\n```php\r\n    $di->set(''MongoDB'', function () use ($config) {\r\n		$mongo = new MongoClient("mongodb://" .\r\n		   $config->database->mongo->username . ":"\r\n		   $config->database->mongo->password . "@" . \r\n		   $config->database->mongo->host,array("db" => $config->database->mongo->dbname)\r\n		);\r\n		return $mongo->selectDb($config->database->mongo->dbname);\r\n    }, TRUE);\r\n```	'),
(14, 7, 1, 1415848780, 'In Phalcon, all models can belong to the same database connection or have an individual one. Actually, when [Phalcon\\Mvc\\Model](http://docs.phalconphp.com/en/latest/api/Phalcon_Mvc_Model.html) needs to connect to the database it requests the “db” service in the application’s services container. \r\n\r\n```php\r\n	//This service returns a MySQL database\r\n	$di->set(''dbMysql'', function() {\r\n		 return new \\Phalcon\\Db\\Adapter\\Pdo\\Mysql(array(\r\n			"host" => "localhost",\r\n			"username" => "root",\r\n			"password" => "secret",\r\n			"dbname" => "invo"\r\n		));\r\n	});\r\n  \r\n	//This service returns a PostgreSQL database\r\n	$di->set(''dbPostgres'', function() {\r\n		 return new \\Phalcon\\Db\\Adapter\\Pdo\\PostgreSQL(array(\r\n			"host" => "localhost",\r\n			"username" => "postgres",\r\n			"password" => "",\r\n			"dbname" => "invo"\r\n		));\r\n	});\r\n\r\n```\r\n###Specify Connection\r\n\r\nNow that we have a 2nd database connection setup - how do we use it in code?\r\n\r\nIn the Initialize method, we define the connection service db you want to it  for the model:\r\n\r\n```php\r\n	<?php\r\n\r\n	class Robots extends \\Phalcon\\Mvc\\Model\r\n	{\r\n\r\n		public function initialize()\r\n		{\r\n			$this->setConnectionService(''dbPostgres'');\r\n		}\r\n	}\r\n```'),
(15, 7, 1, 1415848780, 'In Phalcon, all models can belong to the same database connection or have an individual one. Actually, when [Phalcon\\Mvc\\Model](http://docs.phalconphp.com/en/latest/api/Phalcon_Mvc_Model.html) needs to connect to the database it requests the “db” service in the application’s services container. \r\n\r\n```php\r\n	//This service returns a MySQL database\r\n	$di->set(''dbMysql'', function() {\r\n		 return new \\Phalcon\\Db\\Adapter\\Pdo\\Mysql(array(\r\n			"host" => "localhost",\r\n			"username" => "root",\r\n			"password" => "secret",\r\n			"dbname" => "invo"\r\n		));\r\n	});\r\n  \r\n	//This service returns a PostgreSQL database\r\n	$di->set(''dbPostgres'', function() {\r\n		 return new \\Phalcon\\Db\\Adapter\\Pdo\\PostgreSQL(array(\r\n			"host" => "localhost",\r\n			"username" => "postgres",\r\n			"password" => "",\r\n			"dbname" => "invo"\r\n		));\r\n	});\r\n\r\n```\r\n###Specify Connection\r\n\r\nNow that we have a 2nd database connection setup - how do we use it in code?\r\n\r\nIn the Initialize method, we define the connection service db you want to it  for the model:\r\n\r\n```php\r\n	<?php\r\n\r\n	class Robots extends \\Phalcon\\Mvc\\Model\r\n	{\r\n\r\n		public function initialize()\r\n		{\r\n			$this->setConnectionService(''dbPostgres'');\r\n		}\r\n	}\r\n```'),
(16, 8, 1, 1415849244, 'Phalcon provides a debug component that allows the developer to easily find errors produced in an application created with the framework\r\n\r\nThe following example explains how it works:\r\n\r\nTo add Phalcon\\Debug, we are going to open up our bootstrap file, index.php file located at public, and add a couple of lines of code at the beginning of our code, remove the try-catch construction:\r\n\r\n```php\r\n	error_reporting(E_ALL);\r\n    \r\n	$debug = new \\Phalcon\\Debug();\r\n	$debug->listen();\r\n    [...]\r\n	do something\r\n```'),
(17, 8, 1, 1415849244, 'Phalcon provides a debug component that allows the developer to easily find errors produced in an application created with the framework\r\n\r\nThe following example explains how it works:\r\n\r\nTo add Phalcon\\Debug, we are going to open up our bootstrap file, index.php file located at public, and add a couple of lines of code at the beginning of our code, remove the try-catch construction:\r\n\r\n```php\r\n	error_reporting(E_ALL);\r\n    \r\n	$debug = new \\Phalcon\\Debug();\r\n	$debug->listen();\r\n    [...]\r\n	do something\r\n```'),
(18, 7, 1, 1415852103, 'In Phalcon, all models can belong to the same database connection or have an individual one. Actually, when [Phalcon\\Mvc\\Model](http://docs.phalconphp.com/en/latest/api/Phalcon_Mvc_Model.html) needs to connect to the database it requests the “db” service in the application’s services container.\r\n\r\n\r\n```php\r\n	//This service returns a MySQL database\r\n    $di->set(''dbMysql'', function() {\r\n	   return new \\Phalcon\\Db\\Adapter\\Pdo\\Mysql(array(\r\n		  "host" => "localhost",\r\n		  "username" => "root",\r\n		  "password" => "secret",\r\n		  "dbname" => "invo"\r\n	  ));\r\n	});\r\n\r\n	//This service returns a PostgreSQL database\r\n	$di->set(''dbPostgres'', function() {\r\n		 return new \\Phalcon\\Db\\Adapter\\Pdo\\PostgreSQL(array(\r\n			"host" => "localhost",\r\n			"username" => "postgres",\r\n			"password" => "",\r\n			"dbname" => "invo"\r\n		));\r\n	});\r\n\r\n```\r\n\r\n###Specify Connection\r\nNow that we have a 2nd database connection setup - how do we use it in code?In the Initialize method, we define the connection service db you want to it  for the model:\r\n\r\n```php\r\n	<?php\r\n\r\n  class Robots extends \\Phalcon\\Mvc\\Model\r\n  {\r\n  \r\n	  public function initialize()\r\n	  {\r\n		  $this->setConnectionService(''dbPostgres'');\r\n	  }\r\n  \r\n  }\r\n```\r\n\r\n'),
(19, 4, 2, 1415862291, 'If you have a table user with some filed id, lastname, firstname, etc and you want to display fullname when render to be view, you can used code below. I assume you have a user model\r\n\r\nIn folder Form create it\r\n\r\n```php\r\n	$this->add(new Select(''user'', User::find(["columns" => "id,\r\n	        CONCAT(latsname, '' : '', firstname) as fullname"]),\r\n            array(\r\n                ''using''   => [''id'', ''fullname''],\r\n                ''required'' => true\r\n            )\r\n        ));\r\n```\r\nThen in view you need just call it\r\n\r\n```php\r\n   {{ form.render(''user'') }}\r\n```\r\nAlso understand form you can see example vokuro [here](https://github.com/phalcon/vokuro/tree/master/app/forms)'),
(20, 9, 2, 1415863877, 'Sanitizing is the process which removes specific characters from a value, that are not required or desired by the user or application. By sanitizing input we ensure that application integrity will be intact.\r\n\r\n```php\r\n	<?php\r\n\r\n	$filter = new \\Phalcon\\Filter();\r\n	\r\n	// returns "someone@example.com"\r\n	$filter->sanitize("some(one)@exa\\mple.com", "email");\r\n	\r\n	// returns "hello"\r\n	$filter->sanitize("hello<<", "string");\r\n	\r\n	// returns "100019"\r\n	$filter->sanitize("!100a019", "int");\r\n	\r\n	// returns "100019.01"\r\n	$filter->sanitize("!100a019.01a", "float");\r\n```\r\nThe Phalcon\\Filter component provides a set of commonly needed data filters. It provides object oriented wrappers to the php filter extension. Also allows the developer to define his/her own filters\r\n\r\n```php\r\n 	<?php\r\n	$filter = new Phalcon\\Filter();\r\n	$filter->sanitize("some(one)@exa\\\\mple.com", "email"); // returns "someone@example.com"\r\n	$filter->sanitize("hello<<", "string"); // returns "hello"\r\n	$filter->sanitize("!100a019", "int"); // returns "100019"\r\n	$filter->sanitize("!100a019.01a", "float"); // returns "100019.01"\r\n\r\n```'),
(21, 9, 2, 1415863877, 'Sanitizing is the process which removes specific characters from a value, that are not required or desired by the user or application. By sanitizing input we ensure that application integrity will be intact.\r\n\r\n```php\r\n	<?php\r\n\r\n	$filter = new \\Phalcon\\Filter();\r\n	\r\n	// returns "someone@example.com"\r\n	$filter->sanitize("some(one)@exa\\mple.com", "email");\r\n	\r\n	// returns "hello"\r\n	$filter->sanitize("hello<<", "string");\r\n	\r\n	// returns "100019"\r\n	$filter->sanitize("!100a019", "int");\r\n	\r\n	// returns "100019.01"\r\n	$filter->sanitize("!100a019.01a", "float");\r\n```\r\nThe Phalcon\\Filter component provides a set of commonly needed data filters. It provides object oriented wrappers to the php filter extension. Also allows the developer to define his/her own filters\r\n\r\n```php\r\n 	<?php\r\n	$filter = new Phalcon\\Filter();\r\n	$filter->sanitize("some(one)@exa\\\\mple.com", "email"); // returns "someone@example.com"\r\n	$filter->sanitize("hello<<", "string"); // returns "hello"\r\n	$filter->sanitize("!100a019", "int"); // returns "100019"\r\n	$filter->sanitize("!100a019.01a", "float"); // returns "100019.01"\r\n\r\n```'),
(22, 10, 2, 1415864169, 'Sometimes, you have differences between your dev set-up and production set-up that requires you to be able to set a different value for public path. In your service.php and config file, just add the following code and you will be good.\r\n\r\n```php\r\n	<?php\r\n	return new \\Phalcon\\Config([\r\n		''application'' => array(\r\n        ''controllersDir'' => APP_PATH . ''/app/controllers/'',\r\n        ''modelsDir''      => APP_PATH . ''/app/models/'',\r\n        ''viewsDir''       => APP_PATH . ''/app/views/'',\r\n        ''pluginsDir''     => APP_PATH . ''/app/plugins/'',\r\n        ''libraryDir''     => APP_PATH . ''/app/library/'',\r\n        ''development''    => array(\r\n            ''staticBaseUri'' => ''/'',\r\n            ''baseUri''       => ''/''\r\n        ),\r\n        ''production''     => array(\r\n            ''staticBaseUri'' => ''http://static.phosphorum.com/'',\r\n            ''baseUri''       => ''/''\r\n        ),\r\n        ''debug''          => true\r\n    ),\r\n	\r\n	]);\r\n\r\n```\r\n\r\nThen in service file:\r\n\r\n```php\r\n	<?php\r\n	$di->set(\r\n    ''url'',\r\n    function () use ($config) {\r\n        $url = new UrlResolver();\r\n        if (!$config->application->debug) {\r\n            $url->setBaseUri($config->application->production->baseUri);\r\n            $url->setStaticBaseUri($config->application->production->staticBaseUri);\r\n        } else {\r\n            $url->setBaseUri($config->application->development->baseUri);\r\n            $url->setStaticBaseUri($config->application->development->staticBaseUri);\r\n        }\r\n        return $url;\r\n    },\r\n    true\r\n);\r\n```'),
(23, 10, 2, 1415864169, 'Sometimes, you have differences between your dev set-up and production set-up that requires you to be able to set a different value for public path. In your service.php and config file, just add the following code and you will be good.\r\n\r\n```php\r\n	<?php\r\n	return new \\Phalcon\\Config([\r\n		''application'' => array(\r\n        ''controllersDir'' => APP_PATH . ''/app/controllers/'',\r\n        ''modelsDir''      => APP_PATH . ''/app/models/'',\r\n        ''viewsDir''       => APP_PATH . ''/app/views/'',\r\n        ''pluginsDir''     => APP_PATH . ''/app/plugins/'',\r\n        ''libraryDir''     => APP_PATH . ''/app/library/'',\r\n        ''development''    => array(\r\n            ''staticBaseUri'' => ''/'',\r\n            ''baseUri''       => ''/''\r\n        ),\r\n        ''production''     => array(\r\n            ''staticBaseUri'' => ''http://static.phosphorum.com/'',\r\n            ''baseUri''       => ''/''\r\n        ),\r\n        ''debug''          => true\r\n    ),\r\n	\r\n	]);\r\n\r\n```\r\n\r\nThen in service file:\r\n\r\n```php\r\n	<?php\r\n	$di->set(\r\n    ''url'',\r\n    function () use ($config) {\r\n        $url = new UrlResolver();\r\n        if (!$config->application->debug) {\r\n            $url->setBaseUri($config->application->production->baseUri);\r\n            $url->setStaticBaseUri($config->application->production->staticBaseUri);\r\n        } else {\r\n            $url->setBaseUri($config->application->development->baseUri);\r\n            $url->setStaticBaseUri($config->application->development->staticBaseUri);\r\n        }\r\n        return $url;\r\n    },\r\n    true\r\n);\r\n```'),
(24, 11, 2, 1415864653, 'Volt functions act as string replacements and do not actually call the underlying function. Volt translates the function into the relevant string which in return is interpreted by PHP.\r\n\r\n```php\r\n\r\n	  /**\r\n	   * Setting up the view component\r\n	   */\r\n	  $di->set(''view'', function () use ($config) {\r\n  \r\n	  $view = new View();\r\n  \r\n	  $view->setViewsDir($config->application->viewsDir);\r\n  \r\n	  $view->registerEngines(array(\r\n		  ''.volt'' => function ($view, $di) use ($config) {\r\n  \r\n			  $volt = new VoltEngine($view, $di);\r\n			  $voltOptions = array(\r\n				  ''compiledPath'' => $config->application->cacheDir,\r\n				  ''compiledSeparator'' => ''_''\r\n			  );\r\n			  //load function php\r\n			  $compiler = $volt->getCompiler();\r\n			$compiler->addFunction(''shuffle'', ''str_shuffle'');\r\n			  return $volt;\r\n		  }\r\n	  ));\r\n  \r\n	  return $view;\r\n   }, true);\r\n\r\n```\r\nExample above it will  binds the function name *shuffle* in Volt to the PHP function *str_shuffle*\r\n'),
(25, 11, 2, 1415864653, 'Volt functions act as string replacements and do not actually call the underlying function. Volt translates the function into the relevant string which in return is interpreted by PHP.\r\n\r\n```php\r\n\r\n	  /**\r\n	   * Setting up the view component\r\n	   */\r\n	  $di->set(''view'', function () use ($config) {\r\n  \r\n	  $view = new View();\r\n  \r\n	  $view->setViewsDir($config->application->viewsDir);\r\n  \r\n	  $view->registerEngines(array(\r\n		  ''.volt'' => function ($view, $di) use ($config) {\r\n  \r\n			  $volt = new VoltEngine($view, $di);\r\n			  $voltOptions = array(\r\n				  ''compiledPath'' => $config->application->cacheDir,\r\n				  ''compiledSeparator'' => ''_''\r\n			  );\r\n			  //load function php\r\n			  $compiler = $volt->getCompiler();\r\n			$compiler->addFunction(''shuffle'', ''str_shuffle'');\r\n			  return $volt;\r\n		  }\r\n	  ));\r\n  \r\n	  return $view;\r\n   }, true);\r\n\r\n```\r\nExample above it will  binds the function name *shuffle* in Volt to the PHP function *str_shuffle*\r\n'),
(26, 5, 1, 1415867452, 'There many way setup it, if you want to simple to do that just insert code below into  file index.php\r\n\r\n```php\r\n\r\n	$response = new Phalcon\\Http\\ResponseResponse();\r\n    $response->redirect(''505.html'');\r\n    $response->send();\r\n```\r\n\r\nif you want to some complex such as  handle the 404 (Not Found) and 500 (Internal Server Error) within the application. There''s a service you can use which basically you can override key parts of the event management system. You''ll want to hook into the ''dispatch:beforeException'' event, and tell the application to do something else.\r\n\r\n\r\n```php\r\n	//Registering a dispatcher\r\n        $di->set(''dispatcher'', function() {\r\n            //Create/Get an EventManager\r\n            $eventsManager = new \\Phalcon\\Events\\Manager();\r\n            //Attach a listener\r\n            $eventsManager->attach("dispatch", function($event, $dispatcher, $exception) {\r\n                //controller or action doesn''t exist\r\n                if ($event->getType() == ''beforeException'') {\r\n                    switch ($exception->getCode()) {\r\n                        case \\Phalcon\\Dispatcher::EXCEPTION_HANDLER_NOT_FOUND:\r\n                        case \\Phalcon\\Dispatcher::EXCEPTION_ACTION_NOT_FOUND:\r\n                            $dispatcher->forward(array(\r\n                                ''controller'' => ''index'',\r\n                                ''action'' => ''notFound''\r\n                            ));\r\n                            return false;\r\n                    }\r\n                }\r\n            });\r\n\r\n            $dispatcher = new \\Phalcon\\Mvc\\Dispatcher();\r\n            //Set default namespace to frontend module\r\n            $dispatcher->setDefaultNamespace("Las\\Frontend\\Controllers");\r\n            //Bind the EventsManager to the dispatcher\r\n            $dispatcher->setEventsManager($eventsManager);\r\n\r\n            return $dispatcher;\r\n        });\r\n```\r\nText Snippet:\r\n\r\n```php\r\n	\\Phalcon\\Mvc\\Dispatcher::EXCEPTION_HANDLER_NOT_FOUND  - code 2\r\n```\r\nor Text Snippet:\r\n\r\n```php\r\n	\\Phalcon\\Mvc\\Dispatcher::Dispatcher::EXCEPTION_ACTION_NOT_FOUND - code 5 \r\n```\r\n\r\nThen my ErrorController:\r\n\r\n```php\r\n	 <?php\r\n	class ErrorController extends \\Phalcon\\Mvc\\Controller\r\n	{\r\n	  public function notFoundAction()\r\n	  {\r\n		  // The response is already populated with a 404 Not Found header.\r\n	  }\r\n  \r\n	  public function uncaughtExceptionAction()\r\n	  {\r\n		  $this->response->setStatusCode(500, ''Internal Server Error'');\r\n	  }\r\n} \r\n```'),
(27, 12, 1, 1415871173, 'In Phalcon, the cache consists of two parts, a frontend cache that handles cache expiration and transformation, and the backend cache that handles the reads and writes when requested to by the frontend. Here is an example of a cache service. We could simply add this to our service.php file.\r\n\r\n\r\n```php\r\n	<?php\r\n\r\n	//Set the models cache service\r\n	$di->set(''modelsCache'', function() {\r\n\r\n		//Cache data for one day by default\r\n		$frontCache = new \\Phalcon\\Cache\\Frontend\\Data(array(\r\n			"lifetime" => 86400\r\n		));\r\n	\r\n		//Memcached connection settings\r\n		$cache = new Phalcon\\Cache\\Backend\\Apc ($frontendcache, array(\r\n			''prefix'' => ''cache''\r\n		));\r\n	\r\n		return $cache;\r\n	});\r\n```\r\nThen in your models pass a ''cache'' parameter to tell the ORM the resultset must be cached:\r\n\r\n``php\r\n	<?php\r\n\r\n	// Get products without caching\r\n	$products = Products::find();\r\n	\r\n	// Just cache the resultset. The cache will expire in 1 hour (3600 seconds)\r\n	$products = Products::find(array(\r\n		"cache" => array("key" => "my-cache")\r\n	));\r\n	\r\n	// Cache the resultset for only for 5 minutes\r\n	$products = Products::find(array(\r\n		"cache" => array("key" => "my-cache", "lifetime" => 300)\r\n	));\r\n	\r\n	// Using a custom cache\r\n	$products = Products::find(array("cache" => $myCache));\r\n```'),
(28, 12, 1, 1415871173, 'In Phalcon, the cache consists of two parts, a frontend cache that handles cache expiration and transformation, and the backend cache that handles the reads and writes when requested to by the frontend. Here is an example of a cache service. We could simply add this to our service.php file.\r\n\r\n\r\n```php\r\n	<?php\r\n\r\n	//Set the models cache service\r\n	$di->set(''modelsCache'', function() {\r\n\r\n		//Cache data for one day by default\r\n		$frontCache = new \\Phalcon\\Cache\\Frontend\\Data(array(\r\n			"lifetime" => 86400\r\n		));\r\n	\r\n		//Memcached connection settings\r\n		$cache = new Phalcon\\Cache\\Backend\\Apc ($frontendcache, array(\r\n			''prefix'' => ''cache''\r\n		));\r\n	\r\n		return $cache;\r\n	});\r\n```\r\nThen in your models pass a ''cache'' parameter to tell the ORM the resultset must be cached:\r\n\r\n``php\r\n	<?php\r\n\r\n	// Get products without caching\r\n	$products = Products::find();\r\n	\r\n	// Just cache the resultset. The cache will expire in 1 hour (3600 seconds)\r\n	$products = Products::find(array(\r\n		"cache" => array("key" => "my-cache")\r\n	));\r\n	\r\n	// Cache the resultset for only for 5 minutes\r\n	$products = Products::find(array(\r\n		"cache" => array("key" => "my-cache", "lifetime" => 300)\r\n	));\r\n	\r\n	// Using a custom cache\r\n	$products = Products::find(array("cache" => $myCache));\r\n```'),
(29, 12, 1, 1415871205, 'In Phalcon, the cache consists of two parts, a frontend cache that handles cache expiration and transformation, and the backend cache that handles the reads and writes when requested to by the frontend. Here is an example of a cache service. We could simply add this to our service.php file.\r\n\r\n\r\n```php\r\n	<?php\r\n\r\n	//Set the models cache service\r\n	$di->set(''modelsCache'', function() {\r\n\r\n		//Cache data for one day by default\r\n		$frontCache = new \\Phalcon\\Cache\\Frontend\\Data(array(\r\n			"lifetime" => 86400\r\n		));\r\n	\r\n		//Memcached connection settings\r\n		$cache = new Phalcon\\Cache\\Backend\\Apc ($frontendcache, array(\r\n			''prefix'' => ''cache''\r\n		));\r\n	\r\n		return $cache;\r\n	});\r\n```\r\nThen in your models pass a ''cache'' parameter to tell the ORM the resultset must be cached:\r\n\r\n```php\r\n	<?php\r\n	// Get products without caching\r\n	$products = Products::find();\r\n	\r\n	// Just cache the resultset. The cache will expire in 1 hour (3600 seconds)\r\n	$products = Products::find(array(\r\n		"cache" => array("key" => "my-cache")\r\n	));\r\n	\r\n	// Cache the resultset for only for 5 minutes\r\n	$products = Products::find(array(\r\n		"cache" => array("key" => "my-cache", "lifetime" => 300)\r\n	));\r\n	\r\n	// Using a custom cache\r\n	$products = Products::find(array("cache" => $myCache));\r\n```'),
(30, 2, 1, 1415872583, 'In order to do that, first you need to download Phalcon tool [here](https://github.com/phalcon/phalcon-devtools)\r\n\r\n```php\r\n	git clone https://github.com/phalcon/phalcon-devtools.git\r\n\r\n```\r\n\r\nThen, In Eclipse, you just need to add devtool path : phalcon-devtools/ide/PHALCON_VERSION by adding external Source Folder in PHP include Path / Libraries tab.'),
(31, 7, 1, 1415894134, 'In Phalcon, all models can belong to the same database connection or have an individual one. Actually, when [Phalcon\\Mvc\\Model](http://docs.phalconphp.com/en/latest/api/Phalcon_Mvc_Model.html) needs to connect to the database it requests the “db” service in the application’s services container.\r\n\r\n\r\n```php\r\n	//This service returns a MySQL database\r\n    $di->set(''dbMysql'', function() {\r\n	   return new \\Phalcon\\Db\\Adapter\\Pdo\\Mysql(array(\r\n		  "host" => "localhost",\r\n		  "username" => "root",\r\n		  "password" => "secret",\r\n		  "dbname" => "invo"\r\n	  ));\r\n	});\r\n\r\n	//This service returns a PostgreSQL database\r\n	$di->set(''dbPostgres'', function() {\r\n		 return new \\Phalcon\\Db\\Adapter\\Pdo\\PostgreSQL(array(\r\n			"host" => "localhost",\r\n			"username" => "postgres",\r\n			"password" => "",\r\n			"dbname" => "invo"\r\n		));\r\n	});\r\n\r\n```\r\n\r\n###Specify Connection\r\nNow that we have a 2nd database connection setup - how do we use it in code?In the Initialize method, we define the connection service db you want to it  for the model:\r\n\r\n```php\r\n	<?php\r\n\r\n  class Robots extends \\Phalcon\\Mvc\\Model\r\n  {\r\n  \r\n	  public function initialize()\r\n	  {\r\n		  $this->setConnectionService(''dbPostgres'');\r\n	  }\r\n  \r\n  }\r\n```\r\n\r\n'),
(32, 7, 1, 1415894156, 'In Phalcon, all models can belong to the same database connection or have an individual one. Actually, when [Phalcon\\Mvc\\Model](http://docs.phalconphp.com/en/latest/api/Phalcon_Mvc_Model.html) needs to connect to the database it requests the “db” service in the application’s services container.\r\n\r\n\r\n```php\r\n	//This service returns a MySQL database\r\n    $di->set(''dbMysql'', function() {\r\n	   return new \\Phalcon\\Db\\Adapter\\Pdo\\Mysql(array(\r\n		  "host" => "localhost",\r\n		  "username" => "root",\r\n		  "password" => "secret",\r\n		  "dbname" => "invo"\r\n	  ));\r\n	});\r\n\r\n	//This service returns a PostgreSQL database\r\n	$di->set(''dbPostgres'', function() {\r\n		 return new \\Phalcon\\Db\\Adapter\\Pdo\\PostgreSQL(array(\r\n			"host" => "localhost",\r\n			"username" => "postgres",\r\n			"password" => "",\r\n			"dbname" => "invo"\r\n		));\r\n	});\r\n\r\n```\r\n\r\n###Specify Connection\r\nNow that we have a 2nd database connection setup - how do we use it in code?In the Initialize method, we define the connection service db you want to it  for the model:\r\n\r\n```php\r\n	<?php\r\n\r\n  class Robots extends \\Phalcon\\Mvc\\Model\r\n  {\r\n  \r\n	  public function initialize()\r\n	  {\r\n		  $this->setConnectionService(''dbPostgres'');\r\n	  }\r\n  \r\n  }\r\n```\r\n\r\n'),
(33, 7, 1, 1415894181, 'In Phalcon, all models can belong to the same database connection or have an individual one. Actually, when [Phalcon\\Mvc\\Model](http://docs.phalconphp.com/en/latest/api/Phalcon_Mvc_Model.html) needs to connect to the database it requests the “db” service in the application’s services container.\r\n\r\n\r\n```php\r\n	//This service returns a MySQL database\r\n    $di->set(''dbMysql'', function() {\r\n	   return new \\Phalcon\\Db\\Adapter\\Pdo\\Mysql(array(\r\n		  "host" => "localhost",\r\n		  "username" => "root",\r\n		  "password" => "secret",\r\n		  "dbname" => "invo"\r\n	  ));\r\n	});\r\n\r\n	//This service returns a PostgreSQL database\r\n	$di->set(''dbPostgres'', function() {\r\n		 return new \\Phalcon\\Db\\Adapter\\Pdo\\PostgreSQL(array(\r\n			"host" => "localhost",\r\n			"username" => "postgres",\r\n			"password" => "",\r\n			"dbname" => "invo"\r\n		));\r\n	});\r\n\r\n```\r\n\r\n###Specify Connection\r\nNow that we have a 2nd database connection setup - how do we use it in code?In the Initialize method, we define the connection service db you want to it  for the model:\r\n\r\n```php\r\n	<?php\r\n\r\n  class Robots extends \\Phalcon\\Mvc\\Model\r\n  {\r\n  \r\n	  public function initialize()\r\n	  {\r\n		  $this->setConnectionService(''dbPostgres'');\r\n	  }\r\n  \r\n  }\r\n```\r\n\r\n'),
(34, 11, 2, 1415897712, 'Volt functions act as string replacements and do not actually call the underlying function. Volt translates the function into the relevant string which in return is interpreted by PHP.\r\n\r\n```php\r\n\r\n	  /**\r\n	   * Setting up the view component\r\n	   */\r\n	  $di->set(''view'', function () use ($config) {\r\n  \r\n	  $view = new View();\r\n  \r\n	  $view->setViewsDir($config->application->viewsDir);\r\n  \r\n	  $view->registerEngines(array(\r\n		  ''.volt'' => function ($view, $di) use ($config) {\r\n  \r\n			  $volt = new VoltEngine($view, $di);\r\n			  $voltOptions = array(\r\n				  ''compiledPath'' => $config->application->cacheDir,\r\n				  ''compiledSeparator'' => ''_''\r\n			  );\r\n			  //load function php\r\n			  $compiler = $volt->getCompiler();\r\n			$compiler->addFunction(''shuffle'', ''str_shuffle'');\r\n			  return $volt;\r\n		  }\r\n	  ));\r\n  \r\n	  return $view;\r\n   }, true);\r\n\r\n```\r\nExample above it will  binds the function name *shuffle* in Volt to the PHP function *str_shuffle*\r\n'),
(35, 12, 3, 1415971670, 'In Phalcon, the cache consists of two parts, a frontend cache that handles cache expiration and transformation, and the backend cache that handles the reads and writes when requested to by the frontend. Here is an example of a cache service. We could simply add this to our service.php file.\r\n\r\n\r\n```php\r\n	<?php\r\n\r\n	//Set the models cache service\r\n	$di->set(''modelsCache'', function() {\r\n\r\n		//Cache data for one day by default\r\n		$frontCache = new \\Phalcon\\Cache\\Frontend\\Data(array(\r\n			"lifetime" => 86400\r\n		));\r\n	\r\n		//Memcached connection settings\r\n		$cache = new Phalcon\\Cache\\Backend\\Apc ($frontendcache, array(\r\n			''prefix'' => ''cache''\r\n		));\r\n	\r\n		return $cache;\r\n	});\r\n```\r\nThen in your models pass a ''cache'' parameter to tell the ORM the resultset must be cached:\r\n\r\n```php\r\n	<?php\r\n	// Get products without caching\r\n	$products = Products::find();\r\n	\r\n	// Just cache the resultset. The cache will expire in 1 hour (3600 seconds)\r\n	$products = Products::find(array(\r\n		"cache" => array("key" => "my-cache")\r\n	));\r\n	\r\n	// Cache the resultset for only for 5 minutes\r\n	$products = Products::find(array(\r\n		"cache" => array("key" => "my-cache", "lifetime" => 300)\r\n	));\r\n	\r\n	// Using a custom cache\r\n	$products = Products::find(array("cache" => $myCache));\r\n```'),
(36, 4, 2, 1415987497, 'If you have a table user with some filed id, lastname, firstname, etc and you want to display fullname when render to be view, you can used code below. I assume you have a user model\r\n\r\nIn folder Form create it\r\n\r\n```php\r\n	$this->add(new Select(''user'', User::find(["columns" => "id,\r\n	        CONCAT(latsname, '' : '', firstname) as fullname"]),\r\n            array(\r\n                ''using''   => [''id'', ''fullname''],\r\n                ''required'' => true\r\n            )\r\n        ));\r\n```\r\nThen in view you need just call it\r\n\r\n```php\r\n   {{ form.render(''user'') }}\r\n```\r\nAlso understand form you can see example vokuro [here](https://github.com/phalcon/vokuro/tree/master/app/forms)'),
(37, 4, 2, 1415987507, 'If you have a table user with some filed id, lastname, firstname, etc and you want to display fullname when render to be view, you can used code below. I assume you have a user model\r\n\r\nIn folder Form create it\r\n\r\n```php\r\n	$this->add(new Select(''user'', User::find(["columns" => "id,\r\n	        CONCAT(latsname, '' : '', firstname) as fullname"]),\r\n            array(\r\n                ''using''   => [''id'', ''fullname''],\r\n                ''required'' => true\r\n            )\r\n        ));\r\n```\r\nThen in view you need just call it\r\n\r\n```php\r\n   {{ form.render(''user'') }}\r\n```\r\nAlso understand form you can see example vokuro [here](https://github.com/phalcon/vokuro/tree/master/app/forms)'),
(38, 12, 2, 1415987529, 'In Phalcon, the cache consists of two parts, a frontend cache that handles cache expiration and transformation, and the backend cache that handles the reads and writes when requested to by the frontend. Here is an example of a cache service. We could simply add this to our service.php file.\r\n\r\n\r\n```php\r\n	<?php\r\n\r\n	//Set the models cache service\r\n	$di->set(''modelsCache'', function() {\r\n\r\n		//Cache data for one day by default\r\n		$frontCache = new \\Phalcon\\Cache\\Frontend\\Data(array(\r\n			"lifetime" => 86400\r\n		));\r\n	\r\n		//Memcached connection settings\r\n		$cache = new Phalcon\\Cache\\Backend\\Apc ($frontendcache, array(\r\n			''prefix'' => ''cache''\r\n		));\r\n	\r\n		return $cache;\r\n	});\r\n```\r\nThen in your models pass a ''cache'' parameter to tell the ORM the resultset must be cached:\r\n\r\n```php\r\n	<?php\r\n	// Get products without caching\r\n	$products = Products::find();\r\n	\r\n	// Just cache the resultset. The cache will expire in 1 hour (3600 seconds)\r\n	$products = Products::find(array(\r\n		"cache" => array("key" => "my-cache")\r\n	));\r\n	\r\n	// Cache the resultset for only for 5 minutes\r\n	$products = Products::find(array(\r\n		"cache" => array("key" => "my-cache", "lifetime" => 300)\r\n	));\r\n	\r\n	// Using a custom cache\r\n	$products = Products::find(array("cache" => $myCache));\r\n```'),
(39, 13, 4, 1415998797, '\r\n	public function postSubmitAction()\r\n	{\r\n		$form = new MyForm();\r\n		if($this->request->isPost())\r\n    	{	\r\n			$model = new MyModel();\r\n			if($form->isValid())\r\n    		{\r\n				//save\r\n			}\r\n			else\r\n			{\r\n				//saving input values to session\r\n				 foreach($this->request->getPost() as $key=>$msg)\r\n    			{\r\n    				$this->persistent->$key = $msg;\r\n    			}\r\n			}\r\n		}\r\n	}\r\n			\r\n			\r\n    public function getSubmitAction()\r\n    {	\r\n    	$form = new MyForm()\r\n		//if there are any persisten values show them and remove after they are shown\r\n    	if($this->session->has(__CLASS__))\r\n    	{\r\n	    	\\Phalcon\\Tag::setDefaults($this->session->get(__CLASS__));\r\n	    	$this->session->remove(__CLASS__);\r\n	  	}\r\n    	$this->view->setVar(''form'', $form);\r\n    }'),
(40, 13, 4, 1415998798, '\r\n	public function postSubmitAction()\r\n	{\r\n		$form = new MyForm();\r\n		if($this->request->isPost())\r\n    	{	\r\n			$model = new MyModel();\r\n			if($form->isValid())\r\n    		{\r\n				//save\r\n			}\r\n			else\r\n			{\r\n				//saving input values to session\r\n				 foreach($this->request->getPost() as $key=>$msg)\r\n    			{\r\n    				$this->persistent->$key = $msg;\r\n    			}\r\n			}\r\n		}\r\n	}\r\n			\r\n			\r\n    public function getSubmitAction()\r\n    {	\r\n    	$form = new MyForm()\r\n		//if there are any persisten values show them and remove after they are shown\r\n    	if($this->session->has(__CLASS__))\r\n    	{\r\n	    	\\Phalcon\\Tag::setDefaults($this->session->get(__CLASS__));\r\n	    	$this->session->remove(__CLASS__);\r\n	  	}\r\n    	$this->view->setVar(''form'', $form);\r\n    }'),
(41, 13, 4, 1415998819, 'When I need to flash old inputs I do it like this\r\n\r\n	public function postSubmitAction()\r\n	{\r\n		$form = new MyForm();\r\n		if($this->request->isPost())\r\n    	{	\r\n			$model = new MyModel();\r\n			if($form->isValid())\r\n    		{\r\n				//save\r\n			}\r\n			else\r\n			{\r\n				//saving input values to session\r\n				 foreach($this->request->getPost() as $key=>$msg)\r\n    			{\r\n    				$this->persistent->$key = $msg;\r\n    			}\r\n			}\r\n		}\r\n	}\r\n			\r\n			\r\n    public function getSubmitAction()\r\n    {	\r\n    	$form = new MyForm()\r\n		//if there are any persisten values show them and remove after they are shown\r\n    	if($this->session->has(__CLASS__))\r\n    	{\r\n	    	\\Phalcon\\Tag::setDefaults($this->session->get(__CLASS__));\r\n	    	$this->session->remove(__CLASS__);\r\n	  	}\r\n    	$this->view->setVar(''form'', $form);\r\n    }'),
(42, 13, 4, 1415998887, 'When I need to flash old inputs I do it like this\r\n\r\n	public function postSubmitAction()\r\n	{\r\n		$form = new MyForm();\r\n		if($this->request->isPost())\r\n    	{	\r\n			$model = new MyModel();\r\n			if($form->isValid())\r\n    		{\r\n				//save\r\n			}\r\n			else\r\n			{\r\n				//saving input values to session\r\n				 foreach($this->request->getPost() as $key=>$msg)\r\n    			{\r\n    				$this->persistent->$key = $msg;\r\n    			}\r\n				return $this->response->redirect(''/submit'');\r\n\r\n			}\r\n		}\r\n	}\r\n			\r\n			\r\n    public function getSubmitAction()\r\n    {	\r\n    	$form = new MyForm()\r\n		//if there are any persisten values show them and remove after they are shown\r\n    	if($this->session->has(__CLASS__))\r\n    	{\r\n	    	\\Phalcon\\Tag::setDefaults($this->session->get(__CLASS__));\r\n	    	$this->session->remove(__CLASS__);\r\n	  	}\r\n    	$this->view->setVar(''form'', $form);\r\n    }'),
(43, 3, 4, 1415998929, 'You must to create a custom class inheriting from Phalcon\\Flash\\Direct to alter the message adding the close div:\r\n\r\n```php\r\n	class MyFlash extends Phalcon\\Flash\\Direct\r\n	{\r\n	    public function message($type, $message)\r\n	    {\r\n	        $message .= '' <div class="close"></div>'';\r\n	        parent::message($type, $message);\r\n	    }\r\n	}\r\n```\r\n\r\nThen, you must to setup it in file autoload\r\n\r\n```php\r\n	$di->set(''flash'', function(){\r\n    	return new MyFlash();\r\n	})\r\n\r\n```\r\n\r\nOr, you can adding button code to your message:\r\n\r\n```php\r\n$this->flash->success(''<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>My Message'');\r\n\r\n```'),
(44, 13, 4, 1415999066, 'When I need to flash old inputs I do it like this\r\n```php\r\n	public function postSubmitAction()\r\n	{\r\n		$form = new MyForm();\r\n		if($this->request->isPost())\r\n    	{	\r\n			$model = new MyModel();\r\n			if($form->isValid())\r\n    		{\r\n				//save\r\n			}\r\n			else\r\n			{\r\n				//saving input values to session\r\n				 foreach($this->request->getPost() as $key=>$msg)\r\n    			{\r\n    				$this->persistent->$key = $msg;\r\n    			}\r\n				return $this->response->redirect(''/submit'');\r\n\r\n			}\r\n		}\r\n	}\r\n			\r\n			\r\n    public function getSubmitAction()\r\n    {	\r\n    	$form = new MyForm()\r\n		//if there are any persisten values show them and remove after they are shown\r\n    	if($this->session->has(__CLASS__))\r\n    	{\r\n	    	\\Phalcon\\Tag::setDefaults($this->session->get(__CLASS__));\r\n	    	$this->session->remove(__CLASS__);\r\n	  	}\r\n    	$this->view->setVar(''form'', $form);\r\n    }\r\n	```'),
(45, 13, 4, 1415999092, 'When I need to flash old inputs I do it like this\r\n\r\n```php\r\n	public function postSubmitAction()\r\n	{\r\n		$form = new MyForm();\r\n		if($this->request->isPost())\r\n    	{	\r\n			$model = new MyModel();\r\n			if($form->isValid())\r\n    		{\r\n				//save\r\n			}\r\n			else\r\n			{\r\n				//saving input values to session\r\n				 foreach($this->request->getPost() as $key=>$msg)\r\n    			{\r\n    				$this->persistent->$key = $msg;\r\n    			}\r\n				return $this->response->redirect(''/submit'');\r\n\r\n			}\r\n		}\r\n	}\r\n```		\r\n			\r\n```php\r\npublic function getSubmitAction()\r\n    {	\r\n    	$form = new MyForm()\r\n		//if there are any persisten values show them and remove after they are shown\r\n    	if($this->session->has(__CLASS__))\r\n    	{\r\n	    	\\Phalcon\\Tag::setDefaults($this->session->get(__CLASS__));\r\n	    	$this->session->remove(__CLASS__);\r\n	  	}\r\n    	$this->view->setVar(''form'', $form);\r\n    }\r\n	```');
INSERT INTO `posts_history` (`id`, `posts_id`, `users_id`, `created_at`, `content`) VALUES
(46, 13, 4, 1415999107, 'When I need to flash old inputs I do it like this\r\n\r\n```php\r\n	public function postSubmitAction()\r\n	{\r\n		$form = new MyForm();\r\n		if($this->request->isPost())\r\n    	{	\r\n			$model = new MyModel();\r\n			if($form->isValid())\r\n    		{\r\n				//save\r\n			}\r\n			else\r\n			{\r\n				//saving input values to session\r\n				 foreach($this->request->getPost() as $key=>$msg)\r\n    			{\r\n    				$this->persistent->$key = $msg;\r\n    			}\r\n				return $this->response->redirect(''/submit'');\r\n\r\n			}\r\n		}\r\n	}\r\n```		\r\n			\r\n```php\r\n	public function getSubmitAction()\r\n    {	\r\n    	$form = new MyForm()\r\n		//if there are any persisten values show them and remove after they are shown\r\n    	if($this->session->has(__CLASS__))\r\n    	{\r\n	    	\\Phalcon\\Tag::setDefaults($this->session->get(__CLASS__));\r\n	    	$this->session->remove(__CLASS__);\r\n	  	}\r\n    	$this->view->setVar(''form'', $form);\r\n    }\r\n```'),
(47, 13, 4, 1415999121, 'When I need to flash old inputs I do it like this\r\n\r\n```php\r\n	public function postSubmitAction()\r\n	{\r\n		$form = new MyForm();\r\n		if($this->request->isPost())\r\n    	{	\r\n			$model = new MyModel();\r\n			if($form->isValid())\r\n    		{\r\n				//save\r\n			}\r\n			else\r\n			{\r\n				//saving input values to session\r\n				 foreach($this->request->getPost() as $key=>$msg)\r\n    			{\r\n    				$this->persistent->$key = $msg;\r\n    			}\r\n				return $this->response->redirect(''/submit'');\r\n\r\n			}\r\n		}\r\n	}\r\n```		\r\n```php\r\n	public function getSubmitAction()\r\n    {	\r\n    	$form = new MyForm()\r\n		//if there are any persisten values show them and remove after they are shown\r\n    	if($this->session->has(__CLASS__))\r\n    	{\r\n	    	\\Phalcon\\Tag::setDefaults($this->session->get(__CLASS__));\r\n	    	$this->session->remove(__CLASS__);\r\n	  	}\r\n    	$this->view->setVar(''form'', $form);\r\n    }\r\n```'),
(48, 13, 4, 1415999130, 'When I need to flash old inputs I do it like this\r\n\r\n```php\r\n	public function postSubmitAction()\r\n	{\r\n		$form = new MyForm();\r\n		if($this->request->isPost())\r\n    	{	\r\n			$model = new MyModel();\r\n			if($form->isValid())\r\n    		{\r\n				//save\r\n			}\r\n			else\r\n			{\r\n				//saving input values to session\r\n				 foreach($this->request->getPost() as $key=>$msg)\r\n    			{\r\n    				$this->persistent->$key = $msg;\r\n    			}\r\n				return $this->response->redirect(''/submit'');\r\n\r\n			}\r\n		}\r\n	}\r\n```		\r\n\r\n```php\r\n	public function getSubmitAction()\r\n    {	\r\n    	$form = new MyForm()\r\n		//if there are any persisten values show them and remove after they are shown\r\n    	if($this->session->has(__CLASS__))\r\n    	{\r\n	    	\\Phalcon\\Tag::setDefaults($this->session->get(__CLASS__));\r\n	    	$this->session->remove(__CLASS__);\r\n	  	}\r\n    	$this->view->setVar(''form'', $form);\r\n    }\r\n```'),
(49, 11, 4, 1415999302, 'Volt functions act as string replacements and do not actually call the underlying function. Volt translates the function into the relevant string which in return is interpreted by PHP.\r\n\r\n```php\r\n\r\n	  /**\r\n	   * Setting up the view component\r\n	   */\r\n	  $di->set(''view'', function () use ($config) {\r\n  \r\n	  $view = new View();\r\n  \r\n	  $view->setViewsDir($config->application->viewsDir);\r\n  \r\n	  $view->registerEngines(array(\r\n		  ''.volt'' => function ($view, $di) use ($config) {\r\n  \r\n			  $volt = new VoltEngine($view, $di);\r\n			  $voltOptions = array(\r\n				  ''compiledPath'' => $config->application->cacheDir,\r\n				  ''compiledSeparator'' => ''_''\r\n			  );\r\n			  //load function php\r\n			  $compiler = $volt->getCompiler();\r\n			$compiler->addFunction(''shuffle'', ''str_shuffle'');\r\n			  return $volt;\r\n		  }\r\n	  ));\r\n  \r\n	  return $view;\r\n   }, true);\r\n\r\n```\r\nExample above it will  binds the function name *shuffle* in Volt to the PHP function *str_shuffle*\r\n'),
(50, 13, 1, 1416016447, 'When I need to flash old inputs I do it like this\r\n\r\n```php\r\n	public function postSubmitAction()\r\n	{\r\n		$form = new MyForm();\r\n		if($this->request->isPost())\r\n    	{	\r\n			$model = new MyModel();\r\n			if($form->isValid())\r\n    		{\r\n				//save\r\n			}\r\n			else\r\n			{\r\n				//saving input values to session\r\n				 foreach($this->request->getPost() as $key=>$msg)\r\n    			{\r\n    				$this->persistent->$key = $msg;\r\n    			}\r\n				return $this->response->redirect(''/submit'');\r\n\r\n			}\r\n		}\r\n	}\r\n```		\r\n\r\n```php\r\n	public function getSubmitAction()\r\n    {	\r\n    	$form = new MyForm()\r\n		//if there are any persisten values show them and remove after they are shown\r\n    	if($this->session->has(__CLASS__))\r\n    	{\r\n	    	\\Phalcon\\Tag::setDefaults($this->session->get(__CLASS__));\r\n	    	$this->session->remove(__CLASS__);\r\n	  	}\r\n    	$this->view->setVar(''form'', $form);\r\n    }\r\n```');

-- --------------------------------------------------------

--
-- Table structure for table `posts_notifications`
--

CREATE TABLE IF NOT EXISTS `posts_notifications` (
`id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `posts_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `posts_notifications`
--

INSERT INTO `posts_notifications` (`id`, `users_id`, `posts_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(5, 1, 4),
(6, 1, 5),
(7, 1, 6),
(8, 1, 7),
(9, 1, 8),
(13, 1, 12),
(4, 2, 4),
(10, 2, 9),
(11, 2, 10),
(12, 2, 11),
(14, 4, 13);

-- --------------------------------------------------------

--
-- Table structure for table `posts_replies`
--

CREATE TABLE IF NOT EXISTS `posts_replies` (
`id` int(10) unsigned NOT NULL,
  `posts_id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `in_reply_to_id` int(10) unsigned DEFAULT '0',
  `content` text,
  `created_at` int(18) unsigned DEFAULT NULL,
  `modified_at` int(18) unsigned DEFAULT NULL,
  `edited_at` int(18) unsigned DEFAULT NULL,
  `votes_up` int(10) unsigned DEFAULT NULL,
  `votes_down` int(10) unsigned DEFAULT NULL,
  `accepted` char(1) DEFAULT 'N'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `posts_replies`
--

INSERT INTO `posts_replies` (`id`, `posts_id`, `users_id`, `in_reply_to_id`, `content`, `created_at`, `modified_at`, `edited_at`, `votes_up`, `votes_down`, `accepted`) VALUES
(1, 4, 1, NULL, 'nice tips', 1415807519, NULL, NULL, NULL, NULL, 'N'),
(2, 4, 2, NULL, 'thanks', 1415987507, NULL, NULL, NULL, NULL, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `posts_replies_history`
--

CREATE TABLE IF NOT EXISTS `posts_replies_history` (
`id` int(10) unsigned NOT NULL,
  `posts_replies_id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `created_at` int(18) unsigned NOT NULL,
  `content` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `posts_replies_history`
--

INSERT INTO `posts_replies_history` (`id`, `posts_replies_id`, `users_id`, `created_at`, `content`) VALUES
(1, 1, 1, 1415807519, 'nice tips'),
(2, 2, 2, 1415987507, 'thanks');

-- --------------------------------------------------------

--
-- Table structure for table `posts_replies_votes`
--

CREATE TABLE IF NOT EXISTS `posts_replies_votes` (
`id` int(10) unsigned NOT NULL,
  `posts_replies_id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `vote` int(3) NOT NULL,
  `created_at` int(18) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts_subscribers`
--

CREATE TABLE IF NOT EXISTS `posts_subscribers` (
`id` int(10) unsigned NOT NULL,
  `posts_id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `posts_views`
--

CREATE TABLE IF NOT EXISTS `posts_views` (
`id` int(10) unsigned NOT NULL,
  `posts_id` int(10) unsigned NOT NULL,
  `ipaddress` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=245 ;

--
-- Dumping data for table `posts_views`
--

INSERT INTO `posts_views` (`id`, `posts_id`, `ipaddress`) VALUES
(13, 1, '116.100.186.38'),
(1, 1, '127.0.0.1'),
(147, 1, '177.194.16.56'),
(133, 1, '183.1.105.194'),
(49, 1, '183.80.100.40'),
(213, 1, '207.96.182.66'),
(78, 1, '213.34.64.90'),
(93, 1, '37.24.110.125'),
(156, 1, '46.218.7.244'),
(148, 1, '59.127.195.193'),
(167, 1, '66.249.77.153'),
(36, 1, '66.249.79.85'),
(184, 1, '68.180.228.184'),
(226, 1, '75.150.49.81'),
(201, 1, '82.30.67.81'),
(176, 1, '85.238.98.97'),
(24, 2, '1.54.234.116'),
(22, 2, '115.79.34.167'),
(15, 2, '116.100.186.38'),
(2, 2, '127.0.0.1'),
(126, 2, '171.252.17.26'),
(139, 2, '183.82.101.40'),
(103, 2, '186.118.32.167'),
(212, 2, '207.96.182.66'),
(131, 2, '213.179.126.240'),
(85, 2, '221.232.174.75'),
(94, 2, '5.53.118.222'),
(191, 2, '66.249.77.153'),
(44, 2, '66.249.77.173'),
(70, 2, '80.187.99.124'),
(175, 2, '85.238.98.97'),
(101, 2, '88.122.22.3'),
(198, 3, '113.22.54.124'),
(16, 3, '116.100.186.38'),
(3, 3, '127.0.0.1'),
(196, 3, '66.249.77.153'),
(182, 3, '68.180.228.184'),
(33, 3, '78.147.80.29'),
(203, 3, '82.30.67.81'),
(206, 3, '84.119.30.40'),
(209, 3, '89.243.163.213'),
(72, 4, '113.161.77.140'),
(29, 4, '123.20.26.244'),
(4, 4, '127.0.0.1'),
(193, 4, '14.169.45.27'),
(123, 4, '190.249.205.233'),
(91, 4, '212.99.106.196'),
(223, 4, '217.145.218.165'),
(155, 4, '46.218.7.244'),
(39, 4, '66.249.77.163'),
(169, 4, '66.249.77.173'),
(231, 4, '77.145.159.70'),
(32, 4, '78.147.80.29'),
(204, 4, '82.30.67.81'),
(92, 5, '109.190.59.65'),
(12, 5, '118.69.52.129'),
(5, 5, '127.0.0.1'),
(159, 5, '173.251.58.149'),
(235, 5, '179.52.238.60'),
(122, 5, '190.249.205.233'),
(77, 5, '213.34.64.90'),
(106, 5, '222.124.108.222'),
(102, 5, '46.109.134.200'),
(41, 5, '66.249.77.163'),
(179, 5, '66.249.77.173'),
(220, 5, '68.180.228.184'),
(227, 5, '75.150.49.81'),
(31, 5, '78.147.80.29'),
(200, 5, '82.30.67.81'),
(174, 5, '85.238.98.97'),
(73, 6, '113.161.77.140'),
(35, 6, '115.79.34.167'),
(53, 6, '118.69.52.129'),
(6, 6, '127.0.0.1'),
(57, 6, '185.20.4.220'),
(121, 6, '190.249.205.233'),
(64, 6, '198.27.82.205'),
(56, 6, '199.59.148.210'),
(90, 6, '212.99.106.196'),
(61, 6, '23.96.208.137'),
(95, 6, '5.49.213.193'),
(65, 6, '54.172.134.33'),
(69, 6, '54.176.128.153'),
(59, 6, '54.241.198.78'),
(60, 6, '54.241.198.78'),
(62, 6, '54.82.167.1'),
(79, 6, '54.83.138.126'),
(194, 6, '66.249.77.153'),
(45, 6, '66.249.77.173'),
(54, 6, '66.249.82.38'),
(63, 6, '66.249.88.137'),
(185, 6, '68.180.228.184'),
(55, 6, '72.14.199.63'),
(66, 6, '74.112.131.244'),
(67, 6, '74.112.131.246'),
(58, 6, '74.6.254.114'),
(173, 6, '85.238.98.97'),
(100, 6, '88.122.22.3'),
(68, 6, '89.164.168.208'),
(112, 7, '109.251.129.23'),
(84, 7, '111.206.36.142'),
(111, 7, '114.79.45.249'),
(52, 7, '117.102.77.94'),
(28, 7, '123.20.26.244'),
(7, 7, '127.0.0.1'),
(158, 7, '173.251.58.149'),
(241, 7, '179.52.238.60'),
(140, 7, '183.82.101.40'),
(124, 7, '186.118.32.167'),
(120, 7, '190.249.205.233'),
(165, 7, '193.136.33.133'),
(75, 7, '213.34.64.90'),
(83, 7, '221.232.174.75'),
(154, 7, '46.218.7.244'),
(186, 7, '66.249.77.153'),
(43, 7, '66.249.77.163'),
(183, 7, '68.180.228.184'),
(145, 7, '72.14.199.63'),
(146, 7, '72.14.199.75'),
(230, 7, '77.145.159.70'),
(202, 7, '82.30.67.81'),
(205, 7, '84.119.30.40'),
(141, 7, '84.126.130.138'),
(172, 7, '85.238.98.97'),
(144, 7, '89.197.12.206'),
(127, 7, '99.140.22.55'),
(110, 8, '114.79.45.249'),
(8, 8, '127.0.0.1'),
(125, 8, '171.252.17.26'),
(240, 8, '179.52.238.60'),
(51, 8, '203.162.44.45'),
(218, 8, '207.96.182.66'),
(222, 8, '217.145.218.165'),
(47, 8, '24.140.184.190'),
(153, 8, '46.218.7.244'),
(163, 8, '66.249.77.153'),
(37, 8, '66.249.77.163'),
(181, 8, '68.180.228.184'),
(171, 8, '85.238.98.97'),
(98, 8, '88.122.22.3'),
(135, 8, '89.234.68.100'),
(82, 9, '111.206.36.14'),
(71, 9, '113.161.77.140'),
(17, 9, '116.100.186.38'),
(9, 9, '127.0.0.1'),
(86, 9, '14.169.50.227'),
(162, 9, '173.251.58.149'),
(239, 9, '179.52.238.60'),
(233, 9, '181.47.33.240'),
(119, 9, '190.249.205.233'),
(50, 9, '203.162.44.45'),
(216, 9, '207.96.182.66'),
(89, 9, '212.99.106.196'),
(76, 9, '213.34.64.90'),
(143, 9, '217.110.53.72'),
(221, 9, '217.145.218.165'),
(81, 9, '221.232.174.75'),
(152, 9, '46.218.7.244'),
(149, 9, '59.127.195.193'),
(178, 9, '66.249.77.153'),
(40, 9, '66.249.77.163'),
(180, 9, '68.180.228.184'),
(34, 9, '78.147.80.29'),
(199, 9, '82.30.67.81'),
(177, 9, '85.238.98.97'),
(142, 9, '88.22.27.112'),
(109, 10, '114.79.45.249'),
(14, 10, '116.100.186.38'),
(18, 10, '118.69.52.129'),
(10, 10, '127.0.0.1'),
(238, 10, '179.52.238.60'),
(118, 10, '190.249.205.233'),
(215, 10, '207.96.182.66'),
(46, 10, '66.249.77.153'),
(242, 10, '66.249.79.101'),
(195, 10, '66.249.79.85'),
(189, 10, '68.180.228.184'),
(229, 10, '77.145.159.70'),
(130, 11, '1.54.86.170'),
(114, 11, '113.172.26.3'),
(108, 11, '114.79.45.249'),
(138, 11, '118.69.51.21'),
(23, 11, '123.20.26.244'),
(11, 11, '127.0.0.1'),
(20, 11, '14.162.175.163'),
(192, 11, '14.169.45.27'),
(30, 11, '14.169.55.113'),
(105, 11, '181.29.34.84'),
(134, 11, '183.1.105.194'),
(27, 11, '183.81.62.117'),
(129, 11, '187.139.90.51'),
(117, 11, '190.249.205.233'),
(164, 11, '193.136.33.133'),
(214, 11, '207.96.182.66'),
(88, 11, '212.99.106.196'),
(132, 11, '213.179.126.240'),
(74, 11, '213.34.64.90'),
(161, 11, '217.39.151.101'),
(80, 11, '221.232.174.75'),
(97, 11, '46.109.134.200'),
(232, 11, '66.249.77.153'),
(42, 11, '66.249.77.173'),
(187, 11, '68.180.228.184'),
(225, 11, '75.150.49.81'),
(168, 11, '88.122.22.3'),
(136, 11, '89.234.68.100'),
(210, 11, '89.243.163.213'),
(128, 12, '1.54.86.170'),
(197, 12, '113.22.54.124'),
(107, 12, '114.79.45.249'),
(96, 12, '115.76.8.226'),
(19, 12, '118.69.52.129'),
(25, 12, '123.20.26.244'),
(21, 12, '14.162.175.163'),
(190, 12, '14.169.45.27'),
(137, 12, '14.169.50.227'),
(243, 12, '14.169.74.231'),
(157, 12, '173.251.58.149'),
(237, 12, '179.52.238.60'),
(26, 12, '183.81.62.117'),
(87, 12, '186.80.39.202'),
(166, 12, '193.136.33.133'),
(211, 12, '207.96.182.66'),
(160, 12, '217.39.151.101'),
(48, 12, '24.140.184.190'),
(151, 12, '46.218.7.244'),
(104, 12, '46.239.51.70'),
(38, 12, '66.249.77.153'),
(150, 12, '66.249.77.163'),
(188, 12, '68.180.228.184'),
(224, 12, '75.150.49.81'),
(228, 12, '77.145.159.70'),
(113, 12, '79.168.82.16'),
(170, 12, '85.238.98.97'),
(99, 12, '88.122.22.3'),
(207, 12, '89.243.163.213'),
(116, 12, '93.62.210.4'),
(115, 12, '95.65.21.60'),
(219, 13, '121.103.233.19'),
(244, 13, '14.169.74.231'),
(234, 13, '171.253.174.26'),
(236, 13, '179.52.238.60'),
(217, 13, '207.96.182.66'),
(208, 13, '89.243.163.213');

-- --------------------------------------------------------

--
-- Table structure for table `posts_votes`
--

CREATE TABLE IF NOT EXISTS `posts_votes` (
`id` int(10) unsigned NOT NULL,
  `posts_id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `vote` int(3) NOT NULL,
  `created_at` int(18) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `posts_votes`
--

INSERT INTO `posts_votes` (`id`, `posts_id`, `users_id`, `vote`, `created_at`) VALUES
(1, 12, 2, 1, 1415987529),
(2, 13, 1, 1, 1416016447);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(72) DEFAULT NULL,
  `login` varchar(32) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `gravatar_id` char(32) DEFAULT NULL,
  `token_type` varchar(16) DEFAULT NULL,
  `access_token` char(40) DEFAULT NULL,
  `created_at` int(18) unsigned DEFAULT NULL,
  `modified_at` int(18) unsigned DEFAULT NULL,
  `notifications` char(1) DEFAULT 'N',
  `digest` char(1) DEFAULT 'Y',
  `timezone` varchar(48) DEFAULT NULL,
  `moderator` char(1) DEFAULT 'N',
  `karma` int(11) DEFAULT NULL,
  `votes` int(10) unsigned DEFAULT NULL,
  `votes_points` int(11) DEFAULT NULL,
  `banned` char(1) DEFAULT 'N',
  `theme` char(1) DEFAULT 'D'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `email`, `gravatar_id`, `token_type`, `access_token`, `created_at`, `modified_at`, `notifications`, `digest`, `timezone`, `moderator`, `karma`, `votes`, `votes_points`, `banned`, `theme`) VALUES
(1, 'Thiện', 'duythien', 'fcduythien@gmail.com', '97cfdb3586f82c3e1e4fe562bda688b8', 'bearer', '0302ac95a39353a3d5a78bf85beaf9cb43c0b924', 1415796501, 1416027020, 'P', 'Y', 'Europe/London', 'N', 352, 5, 38, 'N', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `users_badges`
--

CREATE TABLE IF NOT EXISTS `users_badges` (
  `id` int(10) unsigned NOT NULL,
  `users_id` int(10) unsigned NOT NULL,
  `badge` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `type` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code1` int(10) unsigned DEFAULT NULL,
  `code2` int(10) unsigned DEFAULT NULL,
  `created_at` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
 ADD PRIMARY KEY (`id`), ADD KEY `created_at` (`created_at`), ADD KEY `users_id` (`users_id`), ADD KEY `posts_id` (`posts_id`);

--
-- Indexes for table `activity_notifications`
--
ALTER TABLE `activity_notifications`
 ADD PRIMARY KEY (`id`), ADD KEY `users_id` (`users_id`,`was_read`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
 ADD PRIMARY KEY (`id`), ADD KEY `number_posts` (`number_posts`);

--
-- Indexes for table `irclog`
--
ALTER TABLE `irclog`
 ADD PRIMARY KEY (`id`), ADD KEY `datelog` (`datelog`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
 ADD PRIMARY KEY (`id`), ADD KEY `users_id` (`users_id`), ADD KEY `posts_id` (`posts_id`), ADD KEY `sent` (`sent`);

--
-- Indexes for table `notifications_bounces`
--
ALTER TABLE `notifications_bounces`
 ADD PRIMARY KEY (`id`), ADD KEY `email` (`email`,`reported`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
 ADD PRIMARY KEY (`id`), ADD KEY `users_id` (`users_id`), ADD KEY `categories_id` (`categories_id`), ADD KEY `title` (`title`), ADD KEY `number_replies` (`number_replies`), ADD KEY `modified_at` (`modified_at`), ADD KEY `created_at` (`created_at`), ADD KEY `sticked` (`sticked`,`created_at`), ADD KEY `deleted` (`deleted`);

--
-- Indexes for table `posts_bounties`
--
ALTER TABLE `posts_bounties`
 ADD PRIMARY KEY (`id`), ADD KEY `users_id` (`users_id`,`posts_replies_id`), ADD KEY `posts_id` (`posts_id`);

--
-- Indexes for table `posts_history`
--
ALTER TABLE `posts_history`
 ADD PRIMARY KEY (`id`), ADD KEY `posts_id` (`posts_id`);

--
-- Indexes for table `posts_notifications`
--
ALTER TABLE `posts_notifications`
 ADD PRIMARY KEY (`id`), ADD KEY `users_id` (`users_id`,`posts_id`);

--
-- Indexes for table `posts_replies`
--
ALTER TABLE `posts_replies`
 ADD PRIMARY KEY (`id`), ADD KEY `posts_id` (`posts_id`), ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `posts_replies_history`
--
ALTER TABLE `posts_replies_history`
 ADD PRIMARY KEY (`id`), ADD KEY `posts_replies_id` (`posts_replies_id`);

--
-- Indexes for table `posts_replies_votes`
--
ALTER TABLE `posts_replies_votes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_subscribers`
--
ALTER TABLE `posts_subscribers`
 ADD PRIMARY KEY (`id`), ADD KEY `posts_id` (`posts_id`);

--
-- Indexes for table `posts_views`
--
ALTER TABLE `posts_views`
 ADD PRIMARY KEY (`id`), ADD KEY `posts_id` (`posts_id`,`ipaddress`);

--
-- Indexes for table `posts_votes`
--
ALTER TABLE `posts_votes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD KEY `access_token` (`access_token`), ADD KEY `login` (`login`), ADD KEY `email` (`email`), ADD KEY `karma` (`karma`), ADD KEY `login_2` (`login`), ADD KEY `notifications` (`notifications`);

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
 MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;

--
-- Indexes for table `users_badges`
--
ALTER TABLE `users_badges`
 ADD PRIMARY KEY (`id`), ADD KEY `users_id` (`users_id`,`badge`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `activity_notifications`
--
ALTER TABLE `activity_notifications`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `irclog`
--
ALTER TABLE `irclog`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `notifications_bounces`
--
ALTER TABLE `notifications_bounces`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `posts_bounties`
--
ALTER TABLE `posts_bounties`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `posts_history`
--
ALTER TABLE `posts_history`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `posts_notifications`
--
ALTER TABLE `posts_notifications`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `posts_replies`
--
ALTER TABLE `posts_replies`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts_replies_history`
--
ALTER TABLE `posts_replies_history`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `posts_replies_votes`
--
ALTER TABLE `posts_replies_votes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_subscribers`
--
ALTER TABLE `posts_subscribers`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts_views`
--
ALTER TABLE `posts_views`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=245;
--
-- AUTO_INCREMENT for table `posts_votes`
--
ALTER TABLE `posts_votes`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
