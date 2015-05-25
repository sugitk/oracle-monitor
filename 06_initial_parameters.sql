set pages 1000
col name format a40
col value format a30

select name, value from v$parameter
order by name;

col parameter format a30

select * from v$nls_parameters;

quit
