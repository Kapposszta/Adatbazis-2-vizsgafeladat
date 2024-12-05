-- Users tábla
CREATE TABLE Users_table (
    user_id NUMBER PRIMARY KEY,
    username VARCHAR2(50) UNIQUE NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    password VARCHAR2(100) NOT NULL,
    registration_date DATE DEFAULT SYSDATE,
    user_level NUMBER DEFAULT 1,
    resources NUMBER DEFAULT 0
);

-- Maps tábla
CREATE TABLE Maps (
    map_id NUMBER PRIMARY KEY,
    map_name VARCHAR2(50) NOT NULL,
    path_data CLOB NOT NULL,
    resource_reward NUMBER NOT NULL
);

-- Resources tábla
CREATE TABLE Resources (
    user_id NUMBER PRIMARY KEY REFERENCES Users(user_id),
    gold NUMBER DEFAULT 0,
    energy NUMBER DEFAULT 0
);

-- Results tábla
CREATE TABLE Results (
    result_id NUMBER PRIMARY KEY,
    user_id NUMBER REFERENCES Users(user_id),
    result_date DATE DEFAULT SYSDATE,
    win_loss VARCHAR2(10) CHECK (win_loss IN ('win', 'lose'))
);
