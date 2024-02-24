/// @description Вставьте описание здесь
// Вы можете записать свой код в этом редакторе

if(instance_exists(follow)){
xTo = follow.x;
yTo = follow.y;

}


x+=(xTo -x)/15;
y+=(yTo - y) /15;

x=clamp(x,viewWidthHalf,room_width-viewWidthHalf);
y = clamp(y,viewHeightHalf,room_height-viewHeightHalf);

x+=random_range(-shakeRemain,shakeRemain);
y+=random_range(-shakeRemain,shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLength)*shakeMagnitude));

camera_set_view_pos(cam,x-viewWidthHalf,y-viewHeightHalf);
