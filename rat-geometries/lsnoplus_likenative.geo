////////////////////////////////////////////////////////
// SNO+ detector geometry during the pure-scintillator
// filled phase.
//
// Author: P G Jones <p.g.jones@qmul.ac.uk>
//
// Revisions:
//  2013-11-28 : First revision, see SNO+-doc-2192.
////////////////////////////////////////////////////////
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

half_size: [20000.0, 20000.0, 40000.0], // mm

material: "rock",

vis_invisible: 1,
//vis_style: "wireframe",
vis_color: [0.67, 0.29, 0.0],
}

{
type: "GEO",
version: 1,
index: "cavity",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

factory: "solid",
solid: "tube",

mother: "world",

r_max: 10000.0,
half_z: 15000.0,

material: "lightwater_sno",

vis_invisible: 1,
//vis_style: "wireframe",
vis_color: [0.67, 0.29, 0.0],
}

{
type: "GEO",
version: 1,
index: "outerPMT",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

mother: "cavity",

factory: "pmtbuilder",

pmt_build_type: [2], // OWL
pmt_type: ["r1408"],

add_concentrator: [0],
concentrator_type: ["cRAT"],

add_bucket: [0],
bucket_type: ["bRAT"],

add_pmtbase: [0],
pmtbase_type: ["r1408"],

grey_disc: [0],
grey_disc_model_params: ["DiscOptics0_0"],

sensitive_detector: "/mydet/pmt/owl",

vis_simple: 1,
vis_invisible: 1,
}

{
type: "GEO",
version: 1,
index: "hqePMT",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

mother: "cavity",

factory: "pmtbuilder",

pmt_build_type: [7], // HQE
pmt_type: ["r5912"],

add_concentrator: [1],
concentrator_type: ["cRAT"],

add_bucket: [1],
bucket_type: ["bRAT"],

add_pmtbase: [0],
pmtbase_type: ["r1408"],

grey_disc: [0],
grey_disc_model_params: ["DiscOptics0_0"],

sensitive_detector: "/mydet/pmt/hqe",

vis_simple: 1,
vis_invisible: 1,
}

{
type: "GEO",
version: 1,
index: "neckPMT",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

mother: "cavity",

factory: "pmtbuilder",

pmt_build_type: [5], // Neck
pmt_type: ["r1408"],

add_concentrator: [0],
concentrator_type: ["cRAT"],

add_bucket: [0],
bucket_type: ["bRAT"],

add_pmtbase: [0],
pmtbase_type: ["r1408"],

grey_disc: [0],
grey_disc_model_params: ["DiscOptics0_0"],

sensitive_detector: "/mydet/pmt/neck",

vis_simple: 1,
vis_invisible: 1,
}

{
type: "GEO",
version: 1,
index: "innerPMT",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

mother: "cavity",

factory: "panelbuilder",

pmt_build_type: [1], // NORMAL
pmt_type: ["r1408"],

add_concentrator: [1],
concentrator_type: ["cRAT"],

add_bucket: [1],
bucket_type: ["bRAT"],

add_pmtbase: [0],
pmtbase_type: ["r1408"],

grey_disc: [0],
grey_disc_model_params: ["DiscOptics0_0"],

sensitive_detector: "/mydet/pmt/inner",

vis_simple: 1,
vis_invisible: 1,
}

{
type: "GEO",
version: 1,
index: "hold_up_ropes",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

factory: "solidArray",

mother: "cavity",

relative: "av",

solid_definition: "sno+_hold_up_rope",

locations: "hold_up_ropes",

material: "tensylon",

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [0.0, 1.0, 0.0],
}

{
type: "GEO",
version: 1,
index: "hold_down_ropes",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

factory: "solidUnion",

mother: "cavity",

relative: "av",

solid_definition: "hold_down_rope",

locations: "hold_down_ropes",

material: "tensylon",

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [1.0, 0.0, 0.0],
}

{
type: "GEO",
version: 1,
index: "av",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

factory: "acrylicVessel",

mother: "cavity",

inner: 0,
acrylic_vessel_definition: "acrylic_vessel_outer",
belly_plate_definition: "belly_plate_outer",
belly_groove_definition: "belly_groove",
belly_plate_locations: "belly_plates",

neck_boss_definition: "neck_boss",
neck_boss_z: 6036.6,

material: "acrylic_sno",

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [0.24, 0.8, 0.950],
}

{
type: "GEO",
version: 1,
index: "neck",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

factory: "solid",

mother: "av",

solid_definition: "neck",

material: "acrylic_grey",

position: [0.0, 0.0,  9562.5],

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [0.75, 0.75, 0.75],
}

{
type: "GEO",
version: 1,
index: "inner_av",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

factory: "acrylicVessel",

mother: "av",

inner: 1,
acrylic_vessel_definition: "acrylic_vessel_inner",
belly_plate_definition: "belly_plate_inner",
belly_plate_locations: "belly_plates",
neck_boss_definition: "neck_boss",
neck_boss_z: 6036.6,
add_ncd_anchors: 0,
ncd_anchor_definition: "ncd_anchor",
ncd_anchor_locations: "ncd_anchors",

material: "labppo_scintillator",

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [0.0, 1.0, 0.2],
}

{
type: "GEO",
version: 1,
index: "av_pipes",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

factory: "solidCollection",

mother: "inner_av",

solids: ["av_pipe-1", "av_pipe-2", "av_pipe-3", "av_pipe-4", "av_pipe-labs", "av_pipe-6", "av_pipe-labr",],

material: "acrylic_sno",

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [0.0, 1.0, 0.0],
}

{
type: "GEO",
version: 1,
index: "internal_ropes",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 0,

factory: "solidArray",

mother: "inner_av",

solid_definition: "internal_rope",

locations: "internal_ropes",

material: "tensylon",

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [1.0, 0.0, 0.0],
}

{
type: "GEO",
version: 1,
index: "ncd_ring",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 0,

factory: "solid",

mother: "inner_av",

solid_definition: "ncd_cable_ring",

position: [0.0, 0.0, 5909.6,],

material: "acrylic_sno",

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [0.0, 0.0, 1.0],
}

{
type: "GEO",
version: 1,
index: "ncd_anchors",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

factory: "solidArray",

mother: "inner_av",

solid_definition: "ncd_anchor",

locations: "ncd_anchors",

material: "acrylic_sno",

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [1.0, 0.0, 0.0],
}
