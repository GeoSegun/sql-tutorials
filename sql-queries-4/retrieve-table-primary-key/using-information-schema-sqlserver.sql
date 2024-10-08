SELECT 
    kcu.COLUMN_NAME
FROM 
    INFORMATION_SCHEMA.TABLE_CONSTRAINTS tc
JOIN 
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE kcu 
    ON tc.CONSTRAINT_NAME = kcu.CONSTRAINT_NAME
WHERE 
    tc.TABLE_SCHEMA = 'dbo'
    AND tc.TABLE_NAME = 'Student'
    AND tc.CONSTRAINT_TYPE = 'PRIMARY KEY';
