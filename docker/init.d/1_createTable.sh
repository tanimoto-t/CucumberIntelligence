psql -U cucumber -d CucumberIntelligence << "EOSQL"
    create table items 
    (
        item_id int
        , name      character varying(200) NOT NULL
        , number    int NOT NULL
        , category  int NOT NULL
        , condition int NOT NULL
        , CONSTRAINT "ID" PRIMARY KEY 
        (
            item_id
        )
    );
EOSQL