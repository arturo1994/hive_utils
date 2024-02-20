-- VERY IMPORTANT, JSON FILE MUST BE IN ONE SINGLE LINE (see data sample for more detail)
CREATE EXTERNAL TABLE IF NOT EXISTS jsonTable (
    Pclass int,
    Sex string,
    Age double,
    SibSp int,
    Parch int,
    Fare double,
    Cabin string,
    Embarked string
)
ROW FORMAT SERDE 'org.apache.hive.hcatalog.data.JsonSerDe'
LOCATION 'hdfs:///json/data';
