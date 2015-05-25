set pages 1000

select * from v$log;

col number format a30
col member format a45

select * from v$logfile;

quit
