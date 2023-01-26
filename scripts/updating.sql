-- Commands to update you database.

-- Add new column
ALTER TABLE [table_name] add [column_name](
    -- Add here all the information you want
);
-- Rename an existing column
ALTER TABLE [table_name] RENAME [column_name] [old_name] to [new_name];
-- Modify an existing column
ALTER TABLE [table_name] MODIFY [column_name] [datatype];
-- Drop an existing column
DROP TABLE [table_name] drop [column_name];
--Update a record in a relation
UPDATE [table_name] SET [column_name]= value, [column_name]= value WHERE [condition];