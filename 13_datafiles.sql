set pages 1000
set lines 100
col tablespace_name format a20
col file_name format a50
col bytes format 999999999999

select tablespace_name, bytes, file_name from dba_data_files
order by tablespace_name, file_name;

select tablespace_name, bytes, file_name from dba_temp_files
order by tablespace_name, file_name;

quit
