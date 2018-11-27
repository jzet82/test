Installation
===============

First run
-------------------
* `cd tools/docker`
* `docker-compose up -d`
* `docker exec -it mf2-com-php bash`
* `composer install`
* `bin/magento setup:install \
     --base-url=http://local.musclefood2.com \
     --db-host=mf2-com-db \
     --db-name=magento \
     --db-user=magento \
     --db-password=magento \
     --backend-frontname=admin \
     --admin-firstname=admin \
     --admin-lastname=admin \
     --admin-email=admin@admin.com \
     --admin-user=admin.adminowitsch \
     --admin-password=admin123 \
     --language=en_GB \
     --currency=GBP \
     --timezone=Europe/London \
     --use-rewrites=1`