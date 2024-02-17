/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if(keyboard_check_pressed(vk_escape))
{
global.gamePaused = !global.gamePaused;
if(global.gamePaused)
{
with(all){
gamePausedImageSpeed = image_speed;
image_speed = 0;

		}
}
else
{
with(all){
image_speed=gamePausedImageSpeed;

}
}
}
