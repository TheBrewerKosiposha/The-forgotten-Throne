//Получение информации от игрока
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_activate = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(ord("mb_left"));
key_item = keyboard_check_pressed(ord("Q"));


input_direction = point_direction(0,0,key_right-key_left,key_down-key_up);
input_magnitude = (key_right - key_left != 0) || (key_down - key_up !=0);

if (!global.gamePaused) script_execute(state);


