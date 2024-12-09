CREATE OR REPLACE VIEW leaderboard_by_wins AS
SELECT 
    u.username,
    COUNT(r.result) AS win_count
FROM 
    User_table u
JOIN 
    Result_table r ON u.user_id = r.user_id
WHERE 
    r.result = 'win'
GROUP BY 
    u.username
ORDER BY 
    win_count DESC;
