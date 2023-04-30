

find_plans_task = player createSimpleTask ["TRAIN"];
find_plans_task setSimpleTaskDescription ["Find the data at the train wreck.","Data Recovery",""];
find_plans_task setSimpleTaskDestination ((getMarkerPos "obj2"));
find_plans_task setTaskState "Assigned";
player setCurrentTask find_plans_task;

player addWeapon "hgun_Pistol_heavy_01_snds_F";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";
player addMagazine "11Rnd_45ACP_Mag";






_h = [miller_1, player] execVM "AI_FOLLOWER_2.sqf";
