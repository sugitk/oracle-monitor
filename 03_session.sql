set pages 1000
col sid format 99999
col serial# format 99999
col username format a10
col machine format a20
col osuser format a8
col program format a30

select sid, serial#, username, machine, osuser, program, status from v$session;

quit

