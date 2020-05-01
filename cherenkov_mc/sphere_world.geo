{
type: "GEO",
version: 1,
index: "world",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

factory: "solid",
solid: "box",

mother: "", // world volume has no mother

half_size: [10000.0, 10000.0, 10000.0], // mm

material: "lightwater_sno",

vis_invisible: 1,
//vis_style: "wireframe",
vis_color: [0.67, 0.29, 0.0],
}

// Make a sphere of a material that absorbs everything
{
type: "GEO",
version: 1,
index: "dark_sphere",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

factory: "solid",
solid: "sphere",

mother: "world",

// Probably this size is a bit too big
r_min: 6000., // mm, this is the inner radius
r_max: 6005., // mm, this is the outher radius

position:  [0,0,0], // Center it at the origin

material: "acrylic_black", // Taking advantage of a pre-defined absorber

// Irrelevant
vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [0.3, 0.8, 0.1],
}