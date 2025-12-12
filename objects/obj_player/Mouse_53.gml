/// @description Single click anywhere in the room -> fire

if(bulletsInClip && !isReloading)
{
    audio_play_sound(sn_Boom, 1, false, 1);

    var bullet = instance_create_layer(x, y, "Instances", obj_bullet); 
    bullet.image_angle = image_angle;
    bullet.direction = image_angle;
    bullet.speed = 20;
    
    bulletsInClip--;
}
