set pages 1000
col username format a25
col default_tablespace format a25
col temporary_tablespace format a20
col created format a10

select username, default_tablespace, temporary_tablespace, created
from dba_users
order by username;

quit
