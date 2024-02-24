randomize();
global.gamePaused = false;
glabal.textSpeed = .75;


var cameraLayer = layer_get_id("oCamera");
global.iCamera = instance_activate_layer(cameraLayer);

room_goto(ROOM_START);