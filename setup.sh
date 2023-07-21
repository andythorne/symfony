apt update
apt install -y librdkafka-dev librabbitmq-dev libicu-dev
pecl install rdkafka amqp apcu igbinary intl mbstring redis relay
docker-php-ext-enable rdkafka amqp

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e21205b207c3ff031906575712edab6f13eb0b361f2085f1f1237b7126d785e826a450292b6cfd1d64d92e6563bbde02') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

mkdir -p tools/php-cs-fixer
/app/composer.phar require --working-dir=tools/php-cs-fixer friendsofphp/php-cs-fixer
