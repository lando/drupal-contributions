#!/bin/sh

/app/web/vendor/drush/drush/drush --root=/app/web si --db-url=mysql://drupal11:drupal11@database/drupal11 -y $1
find /app/web/sites/default -type d -exec chmod 777 '{}' \;
/app/web/vendor/drush/drush/drush --root=/app/web --uri=https://drupal-contributions.lndo.site uli
