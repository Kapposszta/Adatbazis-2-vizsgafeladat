BEGIN
    add_user('Anna Kov�cs', 'anna.kovacs@example.com', 'password123');
    add_user('Bence Szab�', 'bence.szabo@example.com', 'securepass456');
    add_user('Lilla Kiss', 'lilla.kiss@example.com', 'lilla1234');
    add_user('Gerg� T�th', 'gergo.toth@example.com', 'gergototh321');
    add_user('R�ka Farkas', 'reka.farkas@example.com', 'rekapassword');
    add_user('D�vid Nagy', 'david.nagy@example.com', 'davidpass321');
    add_user('Katalin Horv�th', 'katalin.horvath@example.com', 'katalinpw123');
    add_user('Zsolt Moln�r', 'zsolt.molnar@example.com', 'zsoltpw456');
    add_user('Eszter Balogh', 'eszter.balogh@example.com', 'eszterpw789');
    add_user('Andr�s Varga', 'andras.varga@example.com', 'andraspw456');
END;
/

BEGIN
    ADD_MAP('Forest Path', 'Straight path through a dense forest.', 50);
    ADD_MAP('Desert Dunes', 'Winding path over desert dunes.', 40);
    ADD_MAP('Frozen Lake', 'Slippery path across a frozen lake.', 60);
    ADD_MAP('Mountain Trail', 'Challenging path through the mountains.', 70);
    ADD_MAP('Swamp Escape', 'Narrow path through a swampy area.', 30);
    ADD_MAP('Volcano Ridge', 'Hot and dangerous volcanic path.', 80);
    ADD_MAP('River Crossing', 'Path with multiple river crossings.', 45);
    ADD_MAP('Dark Cave', 'Twisty path inside a dark cave.', 65);
    ADD_MAP('Meadow Run', 'Simple path across a sunny meadow.', 35);
    ADD_MAP('City Outskirts', 'Urban path with tight turns.', 55);
END;
/
