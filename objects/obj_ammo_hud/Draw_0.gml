/// @description Draw the HUD for the ammo in the clip

// loop as many times as there are still bullets
for (var i = 0; i < player.bulletsInClip; i++) 
{
    draw_sprite_ext(spr_bullet, 0, marginLeft + (i * (spriteWidth + spriteSpacing * 2)), marginTop + spriteHeight, 1, 1, 90, c_white, 1);
}
