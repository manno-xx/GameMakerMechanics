/// @description When bullet hits a wall
/// 'dust particles'

sparklesSystem = part_system_create_layer("Instances", false);
sparkles = part_type_create();
part_type_direction(sparkles, direction + 170, direction + 190, 0, 0);
part_type_size( sparkles, 1, 4, .2, 0 );
part_type_life(sparkles, 10, 20);
part_type_speed(sparkles, 1, 3, 0, 0);

part_particles_create(sparklesSystem, x, y, sparkles, 6);

instance_destroy();