It is a template of PHP-7.4 + Apache running in a docker container 

# How to run it 

- clone the repository
- docker-compose build
- docker-compose up -d
- docker exec -it myphp-7.4 /bin/bash
- php [path-file.php] (php samples/hello/hello.php)  


# Acess Apache by browser 
(port:808, it can be modified)

- http://localhost:808/ (default index)

- http://localhost:808/[path-to-file.php] (specific file)
- http://localhost:808/samples/hello/hello.php

