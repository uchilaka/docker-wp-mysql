# docker-wp-mysql
Docker MySQL Server image configurations for docker wordpress stages

## Setup
- Make sure you create the following file relative to the root directory of the project: `./private/vars.conf`
- In the `vars.conf` file above, input the following code:

```
MYSQL_PW="{your_mysql_root_password}"
```
- *FYI* if your data directory in deployment already contains mysql files, those files will NOT be replaced (I believe this to be true as @ last check of the Docker source documentation for the docker repo src we are using)
