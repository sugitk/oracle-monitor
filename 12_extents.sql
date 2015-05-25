set pages 1000
col tablespace_name format a25
col status format a10

select tablespace_name, initial_extent, next_extent, min_extents, max_extents,
pct_increase, status from dba_tablespaces;

quit
