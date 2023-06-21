/* 	
Replace <DatabaseName>, <TableName>, and <FilePath> with correct values.
And If neccassary change the FIELDTERMINATOR value.
*/

USE <DatabaseName>;
GO

BULK INSERT <TableName>
FROM '<FilePath>'
WITH ( FORMAT = 'CSV', FIELDTERMINATOR = ';' );

GO
