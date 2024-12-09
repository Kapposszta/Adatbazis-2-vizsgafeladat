CREATE OR REPLACE VIEW leaderboard_by_gold AS
SELECT 
    u.username,
    r.gold
FROM 
    User_table u
JOIN 
    Resource_table r ON u.user_id = r.user_id
ORDER BY 
    r.gold DESC;
