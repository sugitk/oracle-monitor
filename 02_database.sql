set pages 1000
col name format a10
col db_unique_name format a10
col log_mode format a20

select dbid, name, db_unique_name, log_mode from v$database;

quit
