# Server install tasks. Run with:
# cap [level] deploy:install -s user=[sudoer_user]
# sudoer_user must have passwordless sudo available.

# Required for all Singlebrook-managed servers
load 'config/install/recipes/base'
load 'config/install/recipes/security/firewall'
load 'config/install/recipes/security/no_root_ssh'
load 'config/install/recipes/security/fail2ban'
load 'config/install/recipes/mail/postfix'
load 'config/install/recipes/mail/root_forwarding'
load 'config/install/recipes/other/auto_upgrades'

# Most servers will want these
load 'config/install/recipes/security/deploy_user'
load 'config/install/recipes/scm/git'

# Various services
load 'config/install/recipes/webserver/apache2'
load 'config/install/recipes/database/mysql'
load 'config/install/recipes/other/memcached'

# PHP stuff
load 'config/install/recipes/language/php'
load 'config/install/recipes/language/php-memcached'
load 'config/install/recipes/webserver/apache2_drupal_vhost'
