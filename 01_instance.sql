set pages 1000
col instance_name format a20
col host_name format a20
col status format a10

select instance_number, instance_name, host_name, status from v$instance;

quit
