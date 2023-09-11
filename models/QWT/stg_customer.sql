create file format commaFormat
type = 'CSV'
field_delimiter = ','
skip_header = 1;

CREATE or replace STAGE S3CustStage 
URL='s3://qwtsalesdat' CREDENTIALS=(AWS_KEY_ID='AKIATJOY4UML6IR4LG7Q' AWS_SECRET_KEY='aHRZ3rTPIVf0p9JXz7RmKKCYPcw9quAdjezW8xB9')
file_format = commaformat;

list @S3employeeStage1;

copy into employees(fullname ,email ,address ,city ,dateofjoining ) from (select concat($1,', ',$2), $3, $4, $5, $6 from @s3employeestage1)
on_error = 'skip_file';