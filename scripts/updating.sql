-- Commands to update you database.

-- Add new column
ALTER TABLE [table_name] add [column_name] [specifications];
-- ALTER TABLE doctor ADD teaches varchar(20);

-- Rename an existing table
ALTER TABLE [table_name] RENAME [column_name] [old_name] to [new_name];
-- ALTER TABLE doctor to student;

-- Drop an existing column
DROP TABLE [table_name] drop [column_name];
-- alter table student drop teaches;

-- Update a record in a relation
UPDATE [table_name] SET [column_name]= value, [column_name]= value WHERE [condition];
-- update patient set first_name='Alfred', birth_date='1999/12/09' where id=3;

