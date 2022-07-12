
if (invis != 0)
    return 0;

//global.plr_hp > 0 &&
if (global.plr_hp > 0) {
    if (action != action_hurt) {
        y_speed = -4;
        x_speed = -4 * anim_dir;
        
        ground = false;
        
        action = action_hurt;
        
        anim_color = c_red;
        
        audio_play_sound(sndDamage, 0, false);
        
        invis = 150;
    
        global.plr_hp--;
    }
} else {
    y_speed = -8;
    x_speed = 0;
    
    action = action_die;
        
    ground = false;

    anim_color = c_red;
        
    audio_play_sound(sndDamage, 0, false);
}