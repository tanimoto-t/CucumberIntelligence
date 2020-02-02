psql -U cucumber -d CucumberIntelligence << "EOSQL"
    CREATE TABLE IF NOT EXISTS items
    (
        item_id 		bigserial	 			NOT NULL 	
        , name          character varying(200)  NOT NULL    
        , number        integer                 NOT NULL  
        , category      integer	                NOT NULL    DEFAULT 0
        , condition     integer                 NOT NULL    DEFAULT 0
        , user_id       bigint                  NOT NULL
        , detail        character varying(1000) 
        , image_1       character varying(200) 
        , image_2       character varying(200) 
        , image_3       character varying(200) 
        , image_4       character varying(200) 
        , image_5       character varying(200) 
        , image_6       character varying(200) 
        , image_7       character varying(200) 
        , image_8       character varying(200) 
        , image_9       character varying(200) 
        , image_10      character varying(200)
        , is_delete     integer                  NOT NULL    DEFAULT 0
        , created_at    timestamp with time zone NOT NULL    DEFAULT CURRENT_TIMESTAMP
        , updated_at    timestamp with time zone NOT NULL    DEFAULT CURRENT_TIMESTAMP
		, CONSTRAINT "ItemID" PRIMARY KEY(item_id)
    );
    CREATE TABLE IF NOT EXISTS users
    (
        user_id         bigserial	 			NOT NULL 
        , email	        character varying(200)	NOT NULL
        , password	    character varying(400)	NOT NULL	
        , last_name	    character varying(20)	NOT NULL	
        , first_name	character varying(20)	NOT NULL	
        , gender	    integer             	NOT NULL	
        , birthday	    date	                NOT NULL	
        , postal_code	character varying(7)	NOT NULL	
        , address	    character varying(200)	NOT NULL	
        , tel	        character varying(20)	NOT NULL	
        , role	        integer                 NOT NULL	
        , bank_name	    character varying(100)	NOT NULL	
        , branch_name	character varying(100)	NOT NULL	
        , deposit_type   integer     	        NOT NULL	
        , bank_number	character varying(20)	NOT NULL	
        , bank_kana	    character varying(50)	NOT NULL	
        , coments	    character varying(500)		
        , thumbnail	    character varying(200)		
        , code	        character varying(200)		
        , is_confirm	integer                 NOT NULL	DEFAULT 0
        , is_update	    integer                 NOT NULL	DEFAULT 0
        , reset_code	character varying(200)		
        , reset_limit	timestamp with time zone		
        , is_delete	    integer                 NOT NULL	DEFAULT 0
        , created_at	timestamp with time zone NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , updated_at	timestamp with time zone NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , CONSTRAINT "UserID" PRIMARY KEY(user_id)
    );
    CREATE TABLE IF NOT EXISTS auction
    (
        auction_id	                    bigserial	NOT NULL
        , item_id	                    bigint  	NOT NULL
        , start_date	                timestamp with time zone	NOT NULL
        , end_date	                    timestamp with time zone	NOT NULL
        , auto_extenstion	            integer 	NOT NULL	    DEFAULT 0
        , early_termination	            integer 	NOT NULL	    DEFAULT 0
        , retuens	                    integer     NOT NULL	    DEFAULT 0
        , appraisal_restriction	        integer 	NOT NULL	    DEFAULT 0
        , authentication_restriction	integer 	NOT NULL	    DEFAULT 0
        , start_price	                integer 	NOT NULL
        , buyout_price	                integer	
        , is_delete	                    integer 	NOT NULL	    DEFAULT 0
        , created_at	timestamp with time zone	NOT NULL	    DEFAULT CURRENT_TIMESTAMP
        , updated_at	timestamp with time zone	NOT NULL	    DEFAULT CURRENT_TIMESTAMP
        , CONSTRAINT "AuctionID" PRIMARY KEY(auction_id)
    );
    CREATE TABLE IF NOT EXISTS tender
    (
        tender_id	    bigserial	                NOT NULL
        , item_id	    bigint	                    NOT NULL
        , user_id	    bigint	                    NOT NULL
        , amount	    integer	                    NOT NULL
        , is_delete	    integer	                    NOT NULL    DEFAULT 0
        , created_at    timestamp with time zone    NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , updated_at	timestamp with time zone    NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , CONSTRAINT "TenderID" PRIMARY KEY(tender_id)
    );
        CREATE TABLE IF NOT EXISTS successful_bid
    (
        successful_bid_id	    bigserial	                NOT NULL
        , item_id	            bigint  	                NOT NULL
        , user_id	            bigint  	                NOT NULL
        , amount	            integer	                    NOT NULL
        , is_delete	            integer	                    NOT NULL	DEFAULT 0
        , created_at	        timestamp with time zone	NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , updated_at	        timestamp with time zone	NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , CONSTRAINT "SuccessfulBigID" PRIMARY KEY(successful_bid_id)
    );
    CREATE TABLE IF NOT EXISTS favorite
    (
        favorite_id	    bigserial  	                NOT NULL
        , item_id	    bigint  	                NOT NULL
        , user_id	    bigint  	                NOT NULL
        , is_delete	    integer 	                NOT NULL	DEFAULT 0
        , created_at	timestamp with time zone	NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , updated_at	timestamp with time zone	NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , CONSTRAINT "FavoriteID" PRIMARY KEY(favorite_id)
    );
    CREATE TABLE IF NOT EXISTS follow
    (
        follow_id           bigserial  	                NOT NULL
        , follower_user_id	bigint  	                NOT NULL
        , followee_user_id	bigint  	                NOT NULL
        , is_delete	        integer 	                NOT NULL	DEFAULT 0
        , created_at	    timestamp with time zone	NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , updated_at	    timestamp with time zone	NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , CONSTRAINT "FollowID" PRIMARY KEY(follow_id)
    );
    CREATE TABLE IF NOT EXISTS m_category 
    (
        category_id         bigserial  	                NOT NULL
        , hundreds_place	integer 	                NOT NULL	
        , tens_place	    integer 	                NOT NULL	
        , ones_place	    integer 	                NOT NULL	
        , category_name	    character varying(20)	    NOT NULL	
        , is_delete	        integer 	                NOT NULL	DEFAULT 0
        , created_at	    timestamp with time zone	NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , updated_at	    timestamp with time zone	NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , CONSTRAINT "CategoryID" PRIMARY KEY(category_id)
    );
    CREATE TABLE IF NOT EXISTS m_condition
    (
        condition_id	    bigserial  	                NOT NULL
        , hundreds_place	integer                 	NOT NULL
        , tens_place	    integer                     NOT NULL
        , ones_place	    integer                     NOT NULL
        , condition_name	character varying(20)	    NOT NULL
        , is_delete	        integer                    	NOT NULL	DEFAULT 0
        , created_at	    timestamp with time zone	NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , updated_at	    timestamp with time zone	NOT NULL	DEFAULT CURRENT_TIMESTAMP
        , CONSTRAINT "ConditionID" PRIMARY KEY(condition_id)
    );
EOSQL