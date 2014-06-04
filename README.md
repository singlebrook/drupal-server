# Singlebrook Drupal Server builder

1. Clone the repo: `git clone --recursive git://github.com/singlebrook/drupal-server'
2. Edit `config/deploy.rb`
3. Create yourself a sudoer user on each server:
    * `adduser [you]`
    * `addgroup [you] sudo`
    * `su [you]`
    * add your public key to your `~/.ssh/authorized_keys`
    * set permissions: `chmod -R og-rwx ~/.ssh`
4. `sudo vi /etc/sudoers.d/passwordless` to contain the following:

    ```
    # Allow members of group sudo to execute any command with no password
    %sudo   ALL=(ALL) NOPASSWD: ALL
    ```

5. `sudo chmod 440 /etc/sudoers.d/passwordless`
6. `cap [level] deploy:install -s user=[your sudoer]`, where `[level]` is an optional deployment level if you're using cap multistage.