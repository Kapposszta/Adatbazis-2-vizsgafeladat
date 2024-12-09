-- User tábla
CREATE TABLE User_table (
    user_id NUMBER PRIMARY KEY,
    username VARCHAR2(50) UNIQUE NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    password VARCHAR2(50) NOT NULL,
    registration_date DATE DEFAULT SYSDATE,
    xp NUMBER DEFAULT 0,
    user_level NUMBER DEFAULT 1
);

-- Resource tábla
CREATE TABLE Resource_table (
    resource_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    gold NUMBER DEFAULT 0,
    wood NUMBER DEFAULT 0,
    brick NUMBER DEFAULT 0,
    diamond NUMBER DEFAULT 0,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES User_table(user_id) ON DELETE CASCADE
);

-- Map tábla
CREATE TABLE Map_table (
    map_id NUMBER PRIMARY KEY,
    map_name VARCHAR2(50) NOT NULL,
    path_data VARCHAR2(255),
    gold_reward NUMBER NOT NULL,
    xp_reward NUMBER NOT NULL,
    wood_reward NUMBER DEFAULT 0,
    brick_reward NUMBER DEFAULT 0
);


-- Result tábla
CREATE TABLE Result_table (
    result_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    map_id NUMBER,
    result VARCHAR2(10) CHECK (result IN ('win', 'lose')),
    played_at DATE DEFAULT SYSDATE,
    CONSTRAINT fk_user_result FOREIGN KEY (user_id) REFERENCES User_table(user_id) ON DELETE CASCADE,
    CONSTRAINT fk_map_result FOREIGN KEY (map_id) REFERENCES Map_table(map_id)
);
