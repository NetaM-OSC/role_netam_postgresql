# Role NetAM DB

This role is designed to install postgresql engine, create empy database for netam, create user and configure backup jobs.

## Important disclaimer

To securing your role and your installation, we encourage you to switch all `group_vars` file with sensitive datas into an ansible vault file.  
According to this, all configurations you must override such as `d_netam_db_name` could be stored in same vault for better security.

In any cases NetAM-OSC developer can't be take responsibility of an unsecure installation.

## Variables

| Name | Default value | Impact |
| ---- | ------------- | ------ |
| `d_netam_db_name`            | netam              | Postgres database name created and used                                                           |
| `d_netam_db_conn_limit`      | 1024               | Max Postgres connection allowed. This could be increased if you update your worker configurations |
| `d_netam_db_backup_base_dir` | /usr/local/exploit | Base backup directory to store backup script and databases backup archives                        |

## Tags

| Tag     | Description                                              |
| ------- | -------------------------------------------------------- |
| install | Perform full installation on new system                  |
| update  | Reconfigure NetAM database user/password, or backup path |