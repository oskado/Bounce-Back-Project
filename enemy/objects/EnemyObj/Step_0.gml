// 1. Check if player exists (Prevents crashes)
if (instance_exists(player)) 
{
    // 2. Calculate direction and distance
    var dir = point_direction(x, y, player.x, player.y);
    var dist = point_distance(x, y, player.x, player.y);

    // 3. Move the enemy (Slides around walls automatically)
    if (dist > stop_distance) 
    {
        mp_potential_step(player.x, player.y, move_speed, false);
    }

    // 4. Flip the sprite based on player position
    if (player.x > x) 
    {
        image_xscale = 1;  // Face right
    } 
    else 
    {
        image_xscale = -1; // Face left
    }

    // 5. Play the animation
    image_speed = 0.3; 
}
else 
{
    image_speed = 0; // Stop animating if player is gone
}