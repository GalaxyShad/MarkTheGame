/*
*       player_collision_main( x, y, object);
*
*   =============================================
*
*   This functions returns if the main sensor has collided
*
*/

    /* This function is used essentially for collision detection with slopes up. 
       It just detect collision of the main sensor (the big sensor that involves the
       main collisions).
    */
    
    // Store the actual mask for setting it up later
    temporal_mask   =   mask_index;
    mask_index      =   maskMain;

    // Test collision
    collision_test  =   instance_place( argument0, argument1, argument2 );

    // Set to the old mask
    mask_index      =   temporal_mask;
    
    // Calculate the direction
    return  collision_test;