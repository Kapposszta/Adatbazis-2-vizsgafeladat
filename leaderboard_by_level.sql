CREATE OR REPLACE VIEW leaderboard_by_level AS
SELECT 
    u.username,
    u.user_level
FROM 
    User_table u
ORDER BY 
    u.user_level DESC;
