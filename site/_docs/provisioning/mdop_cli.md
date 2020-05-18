---
layout: docs
chapter: Provisioning
title: Using the mdop cli 
permalink: /docs/provisioning/mdop_cli/
---

# MDOP CLI Instructions

These instructions will spin up an instance in a single server after it has been provisioned by using the MDOP CLI.  

Please check the [prerequisites](http://github.com/majidpal/mdop-docker-compose/docs/prerequisites/).

1. Clone the [MDOP git repository](https://github.com/majidpal/mdop-docker-compose) and cd into it.
2. Run the MDOP CLI with the added parameter for the Proxy IP.
  1. This IP must be reachable otherwise the startup will hang.
```
./mdop compose -i <proxy_ip> init
```
3. If all goes well you will see the following output and you can view the DevOps Platform in your browser
    ```
    ##########################################################

    SUCCESS, your new MDOP instance is ready!

    Run this command in your shell:
      source credentials.generate.sh
      source env.config.sh
      
    You can check if any variables are missing with: ./mdop compose config  | grep 'WARNING'

    Navigate to http://<proxy_ip> in your browser to use your new DevOps Platform!
    Login using the following credentials:
      Username: YOUR_USERNAME
      Password: YOUR_PASSWORD
    ```
4. Log in using the username and password you specified in the quickstart script:

    ```<INITIAL_ADMIN_USER> / <INITIAL_ADMIN_PASSWORD>```
