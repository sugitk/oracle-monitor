set pages 1000
col tablespace_name format a20
col used format 999.99999999

select
    tablespace_name,
    (1-sumfree.blocks/sumdat.blocks)*100 as used
from (
    select tablespace_name, sum(blocks) as blocks
    from dba_data_files
    group by tablespace_name
) sumdat
join (
    select tablespace_name, sum(blocks) as blocks
    from dba_free_space
    group by tablespace_name
) sumfree
using (tablespace_name)
order by tablespace_name;

select
    tablespace_name,
    (sumdat.blocks/(sumdat.blocks+sumfree.blocks))*100 as used
from (
    select tablespace_name, sum(bytes_used) as blocks
    from v$temp_space_header
    group by tablespace_name
) sumdat
join (
    select tablespace_name, sum(bytes_free) as blocks
    from v$temp_space_header
    group by tablespace_name
) sumfree
using (tablespace_name)
order by tablespace_name;
 
quit

