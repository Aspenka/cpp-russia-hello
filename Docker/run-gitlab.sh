docker run \
  --detach \
  --hostname 185.185.69.86 \
  --env GITLAB_OMNIBUS_CONFIG="external_url 'http://185.185.69.86/'; gitlab_rails['gitlab_shell_ssh_port'] = 2222;" \
  --publish 443:443 --publish 80:80 --publish 2222:22 --publish 5005:5005 \
  --name gitlab \
  --restart always \
  --volume /srv/gitlab/config:/etc/gitlab \
  --volume /srv/gitlab/logs:/var/log/gitlab \
  --volume /srv/gitlab/data:/var/opt/gitlab  \
  gitlab/gitlab-ce:latest
