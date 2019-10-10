php-oci8 PHP extension
======================

[![Latest Stable Version](https://poser.pugx.org/ang3/php-oci8/v/stable)](https://packagist.org/packages/ang3/php-oci8) [![Latest Unstable Version](https://poser.pugx.org/ang3/php-oci8/v/unstable)](https://packagist.org/packages/ang3/php-oci8) [![Total Downloads](https://poser.pugx.org/ang3/php-oci8/downloads)](https://packagist.org/packages/ang3/php-oci8)

SH installation files for Oracle instant client and PHP 7 config.

**Compatible platforms** *(tested)*

- Linux Ubuntu ^17.10

Installation
============

Step 1: Download sources
------------------------

Open a command console, enter your project directory and execute the
following command to download the latest stable version of this package:

```console
$ composer global require --dev ang3/php-oci8
```

This command requires you to have Composer installed globally, as explained
in the [installation chapter](https://getcomposer.org/doc/00-intro.md)
of the Composer documentation.

Step 2: Installation of Oracle instant client
---------------------------------------------

Included package version: 12.2.1.0.

```console
$ sudo <composer_directory>/vendor/bin/install_oracle_instant_client.sh
```

Step 2: Configure PHP extension
-------------------------------

Launch the command following your PHP version.

**PHP v7.1**
```console
$ sudo <composer_directory>/vendor/bin/configure_php7.1-oci8.sh
```

**PHP v7.2**
```console
$ sudo <composer_directory>/vendor/bin/configure_php7.2-oci8.sh
```

**PHP v7.3**
```console
$ sudo <composer_directory>/vendor/bin/configure_php7.3-oci8.sh
```

Restart PHP-FPM, apache or nginx.

Step 3: Optionally remove the package
-------------------------------------

```console
$ composer global remove ang3/php-oci8
```

That's it!