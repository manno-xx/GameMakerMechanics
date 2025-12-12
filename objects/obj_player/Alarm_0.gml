/// @description The reloading action
bulletsInClip++;
audio_play_sound(sn_reload, 1, false, 1);

if(bulletsInClip < clipSize)
{
    alarm[0] = 30;
}
else 
{
	isReloading = false;
}