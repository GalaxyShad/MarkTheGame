// scr_player_rotate_toward(destination, source, step)

    var _angle_difference;
    _angle_difference = argument0-argument1;

    // -------------------------------------------------------------------------------------
    if (_angle_difference == 0) return argument0;
    
    if (abs(_angle_difference) < 180)
    {
        if ((_angle_difference) < 0)
        {
            argument1 -= argument2;
            if (argument1 <= argument0) argument1 = argument0;
        }
        else
        {
            argument1 += argument2;
            if (argument1 >= argument0) argument1 = argument0;
        }
    }
    else
    {
        if ((_angle_difference) < 0) argument1 += argument2;
        else                        argument1 -= argument2;    
    }
    
    return argument1;