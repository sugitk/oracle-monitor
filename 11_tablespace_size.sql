set pages 1000
col tablespace_name format a15
col sum(bytes) format 999999999999

select tablespace_name, sum(bytes) from dba_data_files
group by tablespace_name;

select tablespace_name, bytes from dba_temp_files;

quit

