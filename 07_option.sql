set pages 1000
col parameter format a50
col value format a10

select * from v$option order by parameter;

quit
