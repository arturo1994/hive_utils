CREATE EXTERNAL TABLE IF NOT EXISTS csvTable
(
    yearstart string, 
    yearend string, 
    locationabbr string, 
    locationdesc string, 
    datasource string, 
    topic string, 
    question string, 
    response string, 
    datavalueunit string, 
    datavaluetype string, 
    datavalue string, 
    datavaluealt string, 
    datavaluefootnotesymbol string, 
    datavaluefootnote string, 
    lowconfidencelimit string, 
    highconfidencelimit string, 
    stratificationcategory1 string, 
    stratification1 string, 
    stratificationcategory2 string, 
    stratification2 string, 
    stratificationcategory3 string, 
    stratification3 string, 
    geolocation string, 
    responseid string, 
    locationid string, 
    topicid string, 
    questionid string, 
    datavaluetypeid string, 
    stratificationcategoryid1 string, 
    stratificationid1 string, 
    stratificationcategoryid2 string, 
    stratificationid2 string, 
    stratificationcategoryid3 string, 
    stratificationid3 string
)
    ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde' WITH SERDEPROPERTIES ('separatorChar'=','  ,'quoteChar'    ='\"' ) 
    STORED AS TEXTFILE 
    location 'hdfs:///csv/data/'
    TBLPROPERTIES('skip.header.line.count'='1');
