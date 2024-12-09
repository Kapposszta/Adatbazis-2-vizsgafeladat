BEGIN
    -- Felhasználók hozzáadása
    user_management_package.add_user('adam_t', 'adam_t@example.com', 'password123');
    user_management_package.add_user('bence_k', 'bence_k@example.com', 'securepass1');
    user_management_package.add_user('cintia_g', 'cintia_g@example.com', 'mypassword5');
    user_management_package.add_user('david_r', 'david_r@example.com', 'davidpass');
    user_management_package.add_user('eva_l', 'eva_l@example.com', 'eva123');
    user_management_package.add_user('fanni_j', 'fanni_j@example.com', 'fannipass');
    user_management_package.add_user('gergo_m', 'gergo_m@example.com', 'passwordgergo');
    user_management_package.add_user('hanna_s', 'hanna_s@example.com', 'hanna321');
    user_management_package.add_user('imre_v', 'imre_v@example.com', 'imrepass99');
    user_management_package.add_user('julia_b', 'julia_b@example.com', 'juliapass2024');
    
    -- Pályák hozzáadása
    game_management_package.add_map('Forest of Beginnings', 'Path 1', 150, 60, 20, 10);
    game_management_package.add_map('Mountain Pass', 'Path 2', 200, 70, 30, 15);
    game_management_package.add_map('Desert Oasis', 'Path 3', 250, 90, 40, 20);
    game_management_package.add_map('Ancient Ruins', 'Path 4', 180, 80, 25, 12);
    game_management_package.add_map('Crystal Caverns', 'Path 5', 300, 100, 50, 30);
END;
