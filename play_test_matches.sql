-- Tesztadatok hozzáadása a meccsekhez (gyõzelem és vereség vegyesen)

BEGIN
    -- User 1 (random gyõzelem és vereség)
    PLAY_MATCH(1, 'win', 2); -- Map ID 2
    PLAY_MATCH(1, 'lose', 1); -- Map ID 1
    PLAY_MATCH(1, 'win', 3); -- Map ID 3

    -- User 2 (random gyõzelem és vereség)
    PLAY_MATCH(2, 'lose', 4);
    PLAY_MATCH(2, 'win', 2);
    PLAY_MATCH(2, 'lose', 5);

    -- User 3 (random gyõzelem és vereség)
    PLAY_MATCH(3, 'win', 6);
    PLAY_MATCH(3, 'lose', 1);

    -- User 4 (6-os winstreak generálása)
    PLAY_MATCH(4, 'win', 2);
    PLAY_MATCH(4, 'win', 3);
    PLAY_MATCH(4, 'win', 4);
    PLAY_MATCH(4, 'win', 5);
    PLAY_MATCH(4, 'win', 6);
    PLAY_MATCH(4, 'win', 1); -- Ez a 6-os winstreak

    -- User 5 (csak vereségek)
    PLAY_MATCH(5, 'lose', 2);
    PLAY_MATCH(5, 'lose', 3);

    -- User 6 (random gyõzelem és vereség)
    PLAY_MATCH(6, 'win', 5);
    PLAY_MATCH(6, 'lose', 4);

    -- User 7 (gyõzelmek többsége)
    PLAY_MATCH(7, 'win', 1);
    PLAY_MATCH(7, 'win', 2);
    PLAY_MATCH(7, 'win', 3);

    -- User 8 (random gyõzelem és vereség)
    PLAY_MATCH(8, 'lose', 6);
    PLAY_MATCH(8, 'win', 4);

    -- User 9 (random gyõzelem és vereség)
    PLAY_MATCH(9, 'win', 5);
    PLAY_MATCH(9, 'lose', 3);

    -- User 10 (csak gyõzelmek)
    PLAY_MATCH(10, 'win', 2);
    PLAY_MATCH(10, 'win', 4);
END;
/
