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
following command to download the latest stable version of this bundle:

```console
$ composer global require --dev ang3/php-oci8
```

This command requires you to have Composer installed globally, as explained
in the [installation chapter](https://getcomposer.org/doc/00-intro.md)
of the Composer documentation.

Step 2: Installation
--------------------

Install Oracle instance client v12.2.1.0:

```sudo <composer_directory>/vendor/bin/install_oracle_instant_client.sh```

Configure PHP extension:

- **7.1** ```sudo <composer_directory>/vendor/bin/configure_php7.1-oci8.sh```
- **7.2** ```sudo <composer_directory>/vendor/bin/configure_php7.2-oci8.sh```
- **7.3** ```sudo <composer_directory>/vendor/bin/configure_php7.3-oci8.sh```

Restart PHP-FPM, apache or nginx.

That's it!