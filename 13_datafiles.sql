set pages 1000
col tablespace_name format a15
col file_name format a45
col bytes format 999999999999

select tablespace_name, bytes, file_name from dba_data_files
order by tablespace_name, file_name;

quit
