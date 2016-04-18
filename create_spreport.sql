set pages 0
set serveroutput on
set feedback off

spool retrieve_spreport.sql

declare
  node number := 1;
  cursor cur is
    select snap_id start_snap_id, lead(snap_id) over(order by snap_id) end_snap_id
    from stats$snapshot
    where instance_number = node
    order by start_snap_id;
begin
  for rec in cur loop
    exit when rec.end_snap_id is null;

    dbms_output.put_line('define begin_snap=' || rec.start_snap_id);
    dbms_output.put_line('define end_snap=' || rec.end_snap_id);
    dbms_output.put_line('define report_name=' || rec.start_snap_id || '_' || rec.end_snap_id || '.txt');
    dbms_output.put_line('@?/rdbms/admin/spreport.sql');
  end loop;
end;
/

spool off

@retrieve_spreport.sql

exit
