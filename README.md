# MySQL Container for Wordpress `docker-wp-mysql`
Docker MySQL Server image configurations for docker wordpress stages

## Documentation
Details about configuring this container: [https://hub.docker.com/_/mysql/]()

## Timezone Settings
Complete more research for how to install timezone tables from resource files at this URL: [https://dev.mysql.com/downloads/timezones.html](). Files for `5.7` have been downloaded to `./res/timezone_2017c_leaps_sql.zip` (NON-POSIX, with leap seconds).

## Setup
- Create the following directory relative to the root of the project: `./data/mysql`
- Make sure you create the following file relative to the root directory of the project: `./private/vars.conf`
- In the `vars.conf` file above, input the following code:

```
MYSQL_PW="{your_mysql_root_password}"
```
- **FYI** if your data directory in deployment already contains mysql files, those files will NOT be replaced (I believe this to be true as @ last check of the Docker source documentation for the docker repo src we are using)
