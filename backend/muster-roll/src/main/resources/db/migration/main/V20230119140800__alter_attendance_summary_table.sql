ALTER TABLE eg_wms_attendance_summary RENAME COLUMN total_attendance TO actual_total_attendance;
ALTER TABLE eg_wms_attendance_summary ADD modified_total_attendance NUMERIC;

DROP INDEX index_eg_wms_attendance_summary_total_attendance;
CREATE INDEX IF NOT EXISTS index_eg_wms_attendance_summary_actual_total_attendance ON eg_wms_attendance_summary (actual_total_attendance);
CREATE INDEX IF NOT EXISTS index_eg_wms_attendance_summary_modified_total_attendance ON eg_wms_attendance_summary (modified_total_attendance);





