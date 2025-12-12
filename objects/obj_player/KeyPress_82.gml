/// @description R key reloads the weapon (if clip is not full)

if(bulletsInClip == clipSize) exit;

isReloading = true;
alarm[0] = 30;
