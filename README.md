## Wordpress Skeleton with Docker configuration (and [Bedrock](https://github.com/roots/bedrock))
[![Build Status](https://travis-ci.org/nietzscheson/wordpress-skeleton.svg?branch=master)](https://travis-ci.org/nietzscheson/wordpress-skeleton)

## Installation

1. Clone repository

    ```bash
    $ git clone git@github.com:nietzscheson/wordpress-skeleton.git
    ```

2. Run Docker's containers

   ```bash
   $ docker-compose up --build -d
   ```
3. Install Wordpress

    ```bash
    $ bin/wp-install.sh
    ```

That's all. Try and fun!!!

This results in the following running containers:

```bash
$ docker-compose ps
            Name                          Command               State                      Ports
-------------------------------------------------------------------------------------------------------------------
phpmyadmin                     /run.sh supervisord -n           Up       80/tcp, 9000/tcp
wordpress-skeleton_db_1        /scripts/startup.sh              Up       3306/tcp
wordpress-skeleton_nginx_1     nginx                            Up       443/tcp, 80/tcp
wordpress-skeleton_php_1       php-fpm7 -F                      Up       0.0.0.0:9000->9000/tcp
wordpress-skeleton_traefik_1   /entrypoint.sh -c /dev/nul ...   Up       0.0.0.0:80->80/tcp, 0.0.0.0:8080->8080/tcp
wordpress-skeleton_wpcli_1     wp --info                        Exit 0
```
## License

This bundle is published under the [MIT License](LICENSE)

## Contributing

First of all, **thank you** for contributing ♥  
If you find any typo/misconfiguration/... please send me a PR or open an issue. You can also ping me on [twitter](https://twitter.com/nietzscheson).  
Also, while creating your Pull Request on GitHub, please write a description which gives the context and/or explains why you are creating it.
