-- Tesztadatok hozz�ad�sa a meccsekhez (gy�zelem �s veres�g vegyesen)

BEGIN
    -- User 1 (random gy�zelem �s veres�g)
    PLAY_MATCH(1, 'win', 2); -- Map ID 2
    PLAY_MATCH(1, 'lose', 1); -- Map ID 1
    PLAY_MATCH(1, 'win', 3); -- Map ID 3

    -- User 2 (random gy�zelem �s veres�g)
    PLAY_MATCH(2, 'lose', 4);
    PLAY_MATCH(2, 'win', 2);
    PLAY_MATCH(2, 'lose', 5);

    -- User 3 (random gy�zelem �s veres�g)
    PLAY_MATCH(3, 'win', 6);
    PLAY_MATCH(3, 'lose', 1);

    -- User 4 (6-os winstreak gener�l�sa)
    PLAY_MATCH(4, 'win', 2);
    PLAY_MATCH(4, 'win', 3);
    PLAY_MATCH(4, 'win', 4);
    PLAY_MATCH(4, 'win', 5);
    PLAY_MATCH(4, 'win', 6);
    PLAY_MATCH(4, 'win', 1); -- Ez a 6-os winstreak

    -- User 5 (csak veres�gek)
    PLAY_MATCH(5, 'lose', 2);
    PLAY_MATCH(5, 'lose', 3);

    -- User 6 (random gy�zelem �s veres�g)
    PLAY_MATCH(6, 'win', 5);
    PLAY_MATCH(6, 'lose', 4);

    -- User 7 (gy�zelmek t�bbs�ge)
    PLAY_MATCH(7, 'win', 1);
    PLAY_MATCH(7, 'win', 2);
    PLAY_MATCH(7, 'win', 3);

    -- User 8 (random gy�zelem �s veres�g)
    PLAY_MATCH(8, 'lose', 6);
    PLAY_MATCH(8, 'win', 4);

    -- User 9 (random gy�zelem �s veres�g)
    PLAY_MATCH(9, 'win', 5);
    PLAY_MATCH(9, 'lose', 3);

    -- User 10 (csak gy�zelmek)
    PLAY_MATCH(10, 'win', 2);
    PLAY_MATCH(10, 'win', 4);
END;
/
