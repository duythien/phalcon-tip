# PhalconTip

[![Build Status](https://travis-ci.org/zphalcon/phalcon-tip.svg?branch=master)](https://travis-ci.org/zphalcon/phalcon-tip.svg)

This is the official Phalcon Tip it clone from Phalcon Forum, you can adapt it to your own needs or improve it if you want.

Please write us if you have any feedback.

Thanks.

## NOTE

The master branch will always contain the latest stable version. If you wish
to check older versions or newer ones currently under development, please
switch to the relevant branch.

## Get Started

### Requirements

To run this application on your machine, you need at least:

* [Curl][1] extension
* [Openssl][2] extension
* Internationalization ([intl][3]) extension
* Mbstring ([mbstring][4]) extension
* [Composer][5]
* PHP >= 5.4
* [Apache][6] Web Server with [mod_rewrite][7] enabled or [Nginx][8] Web Server
* Latest stable [Phalcon Framework release][9] extension enabled
* [Beanstalkd][10] server

### Installation

Install composer in a common location or in your project:

```sh
$ curl -s http://getcomposer.org/installer | php
```

Create the composer.json file as follows:

```json
{
    "require": {
        "zphalcon/phalcon-tip": "dev-master"
    }
}
```

Run the composer installer:

```sh
$ php composer.phar install
```

Then you'll need to create the database and initialize schema:

```sh
$ echo 'CREATE DATABASE phalcontip CHARSET=utf8 COLLATE=utf8_unicode_ci' | mysql -u root
$ cat schemas/phalcontip.sql | mysql -u root phalcontip
```

#### Initial Test Data

You can create fake entries on an empty PhalconTip installation by running:

> Note: The script random-entries.php must be executed inside the scripts directory

```bash
$ cd scripts
$ php random-entries.php
```

Change the owner of `app/logs` and `app/cache` to whatever user your web server is running as.

This application uses Github as authentication system, you need a client id and secret id
to be set up in the configuration (`app/config/config.php`).


#### Starting the Beanstalkd client

A PHP client to deliver e-mails must be enabled in background:

```bash
$ php scripts/send-notifications-consumer.php &
```

## Tests

Phalcontip use [Codeception][11] functional and unit tests. Execute:

```bash
$ vendor/bin/codecept build

$ vendor/bin/codecept run
# OR
$ vendor/bin/codecept run --debug # Detailed output
```

## License

PhalconTip open-sourced software licensed under the [New BSD License][12]. © Phalcon Framework Team and contributors


[1]: http://php.net/manual/en/book.curl.php
[2]: http://php.net/manual/en/book.openssl.php
[3]: http://php.net/manual/en/book.intl.php
[4]: http://php.net/manual/en/book.mbstring.php
[5]: https://getcomposer.org/
[6]: http://httpd.apache.org/
[7]: http://httpd.apache.org/docs/current/mod/mod_rewrite.html
[8]: http://nginx.org/
[9]: https://github.com/phalcon/cphalcon/releases
[10]: http://kr.github.io/beanstalkd/
[11]: http://codeception.com
[12]: https://github.com/zphalcon/phalcon-tip/blob/master/docs/LICENSE.md
