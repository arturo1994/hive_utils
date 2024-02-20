CREATE EXTERNAL TABLE IF NOT EXISTS avroTable
    ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe' 
    STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat' 
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat' 
    LOCATION 'hdfs:///avro/data/' 
    TBLPROPERTIES ('avro.schema.literal'='{
        "name": "kylosample",
        "type": "record",
        "fields": [
            {
            "name": "registration_dttm",
            "type": "string"
            },
            {
            "name": "id",
            "type": "long"
            },
            {
            "name": "first_name",
            "type": "string"
            },
            {
            "name": "last_name",
            "type": "string"
            },
            {
            "name": "email",
            "type": "string"
            },
            {
            "name": "gender",
            "type": "string"
            },
            {
            "name": "ip_address",
            "type": "string"
            },
            {
            "name": "cc",
            "type": [
                "null",
                "long"
            ],
            "default": null
            },
            {
            "name": "country",
            "type": "string"
            },
            {
            "name": "birthdate",
            "type": "string"
            },
            {
            "name": "salary",
            "type": [
                "null",
                "double"
            ],
            "default": null
            },
            {
            "name": "title",
            "type": "string"
            },
            {
            "name": "comments",
            "type": "string"
            }
        ]}'
        );
