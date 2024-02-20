CREATE EXTERNAL TABLE IF NOT EXISTS parquetTable (
    PassengerId int,
    Survived int,
    Pclass  int,
    Name  string,
    Sex string,
    Age double,
    SibSp int,
    Parch int,
    Ticket string,
    Fare double,
    Cabin string,
    Embarked string
)
    STORED AS PARQUET
    LOCATION '/parquet/data'