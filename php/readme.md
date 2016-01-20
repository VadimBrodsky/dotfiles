# Install Composer

```bash
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
```

# Install Homestead

```bash
vagrant box add laravel/homestead
composer global require "laravel/homestead=~2.0"
```

Add `~/.composer/vendor/bin` to PATH

```
homestead init
```

```
homestead edit
sudo vim /etc/hosts
```

# Craft

```
composer global require craft-cli/cli
```

```
craft init
craft install .
```




