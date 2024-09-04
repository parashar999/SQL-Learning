-- CONSTRAINS
	-- Primary Key Constrains
		-- Unique, NOT NULL, Only one primary key per table
        -- Primary key should be kep INT, It fastens the storage and retrieval of data
		-- Ways of making an attribute primary key
        /*
			METHOD 1:
			id INT PRIMARY KEY,
            -- Attributes here
            
            METHOD 2:
            id INT,        
            -- Other Attributes here
            PRIMARY KEY(id)
        */
        
	-- Foreign Key Constrains
		-- Refers to primary key of other table
        /*
			key id,
            FOREIGN KEY(id) references Worker(PRIMARY KEY Of parent table) 
        */
	
    -- Unique Constraint
		-- Used to make an attribute unique
			-- `Name VARCHAR(255) UNIQUE,`
            
	-- CHECK : It is a consistency Constrain
		-- `CONSTRAINT <constrain_name> CHECK(<condition>)`
        
	-- DEFAULT Constrain
		-- `balance INT NOT NULL Default 0,`
