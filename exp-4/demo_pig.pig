-- Load the data from HDFS
data = LOAD '/home/hadoop/piginput/sample.txt' USING PigStorage(',') AS (id:int, name:chararray);

-- Dump the data to check if it was loaded correctly
DUMP data;
