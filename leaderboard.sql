CREATE VIEW leaderboard AS
SELECT u.user_id, u.username, COUNT(r.result_id) AS wins
FROM Users_table u
JOIN Results r ON u.user_id = r.user_id
WHERE r.win_loss = 'win'
GROUP BY u.user_id, u.username
ORDER BY wins DESC;
