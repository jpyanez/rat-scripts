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

half_size: [1000.0, 1000.0, 1000.0], // mm

material: "lightwater_sno",

vis_invisible: 1,
//vis_style: "wireframe",
vis_color: [0.67, 0.29, 0.0],
}

// Removing that box that I had created
{
type: "GEO",
version: 1,
index: "planewave",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

factory: "solid",
solid: "box",

mother: "world", // world volume has no mother

// Probably this size is a bit too big
half_size: [150.0, 150.0, 0.4], // mm
position:  [0,0,130.9],

material: "lightwater_sno",

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [0.3, 0.8, 0.1],
}

{
type: "GEO",
version: 1,
index: "r1408",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

mother: "world",
factory: "pmtbuilder",
pmt_build_type: [1],
pmt_type: ["r1408"],
add_concentrator: [1],
concentrator_type: ["cRAT"],
add_bucket: [0],
bucket_type: ["bRAT"],
add_pmtbase: [0],
pmtbase_type: ["r1408"],
grey_disc: [1],
grey_disc_model_params: ["DiscOptics0_0"],
use_envelope: [1],
pmt_detector_type: "idpmt",
sensitive_detector: "/mydet/pmt/inner",
orientation: "point",
orient_point: [0.0, 0.0, 0.0],
}