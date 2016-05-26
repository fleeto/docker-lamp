`docker pull dustise/lamp`

# Docker image for LAMP

Useable docker image, prepared for drupal.

## Features

### LAMP environment for Drupal

- **OS**: Ubuntu 14.04 LTS
- **PHP**: 5.5.9
- **Apache**: 2.4.7
- **PHP Extensions**:
  - mcrypt
  - gd
  - memcached
  - mysql
- **Opcache enabled**

### Path

- `/web/codebase`: Web Root
- `/web/logs`: Log Root

### More environment variables

Can be replaced through parameters of `docker run` command

|Variable|Default|
|---|---|
|`PHP_DATE_TIMEZONE`|"`Asia/Shanghai`"|
|`PHP_MAX_EXECUTION_TIME`|"`30`"|
|`PHP_MEMORY_LIMIT`|"`128M`"|
|`PHP_ERROR_REPORTING`|"`E_ALL & ~E_DEPRECATED & ~E_STRICT`"|
|`PHP_UPLOAD_MAX_FILESIZE`|"`2M`"|
|`APACHE_STARTSERVERS`|"`5`"|
|`APACHE_MINSPARESERVERS`|"`5`"|
|`APACHE_MAXSPARESERVERS`|"`10`"|
|`APACHE_MAXREQUESTWORKERS`|"`100`"|
|`APACHE_MAXCONNECTIONSPERCHILD`|"`0`"|
|`APACHE_TIMEOUT`|"`300`"|
|`APACHE_MAXKEEPALIVEREQUESTS`|"`100`"|
|`APACHE_KEEPALIVETIMEOUT`|"`5`"|
|`APACHE_MAX_ACCESSLOG`|"`500M`"|
|`APACHE_MAX_ERRORLOG`|"`50M`"|

### Log file will be truncated

We can set max file size through the variables of error log (`APACHE_MAX_ERRORLOG `) and access log (`APACHE_MAX_ACCESSLOG `). `rotatelog` will truncate the log files when it exceed the limitaion.

---

为 Drupal 容器化准备的一个 Docker 镜像。

## 特性

### 适用于 Drupal 的 LAMP 环境

- **操作系统**：Ubuntu 14.04 LTS
- **PHP**：5.5.9
- **Apache**：2.4.7
- **PHP 扩展**：
  - mcrypt
  - memcached
  - mysql
  - gd
- **Opcache 已启用**

### 路径

- `/web/codebase`: Web 根目录
- `/web/logs`: 日志根目录

### 可配置的环境变量

|变量名称|缺省值|
|---|---|
|`PHP_DATE_TIMEZONE`|"`Asia/Shanghai`"|
|`PHP_MAX_EXECUTION_TIME`|"`30`"|
|`PHP_MEMORY_LIMIT`|"`128M`"|
|`PHP_ERROR_REPORTING`|"`E_ALL & ~E_DEPRECATED & ~E_STRICT`"|
|`PHP_UPLOAD_MAX_FILESIZE`|"`2M`"|
|`APACHE_STARTSERVERS`|"`5`"|
|`APACHE_MINSPARESERVERS`|"`5`"|
|`APACHE_MAXSPARESERVERS`|"`10`"|
|`APACHE_MAXREQUESTWORKERS`|"`100`"|
|`APACHE_MAXCONNECTIONSPERCHILD`|"`0`"|
|`APACHE_TIMEOUT`|"`300`"|
|`APACHE_MAXKEEPALIVEREQUESTS`|"`100`"|
|`APACHE_KEEPALIVETIMEOUT`|"`5`"|
|`APACHE_MAX_ACCESSLOG`|"`500M`"|
|`APACHE_MAX_ERRORLOG`|"`50M`"|

### 日志的自动截断

保存在 `/web/logs` 中的日志，可以利用 `APACHE_MAX_ACCESSLOG` 和 `APACHE_MAX_ERRORLOG` 两个变量来调整最大文件尺寸，超出限制的日志将会被截断。
