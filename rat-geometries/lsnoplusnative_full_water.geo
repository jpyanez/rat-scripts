////////////////////////////////////////////////////////
// SNO+ detector geometry during the pure-scintillator
// filled phase, based on native GEANT4 geometries for the scintillator volume (SNOSV),
// acrylic volume (SNOAV) and ropes (SNORope).  Based on snoplus.geo.  See docdb document
//
//
// Author: A. L. Hallin 12/12/2014
//
// Revisions:
//  2014:12/12 : First revision
//  2016-08-16 : Turn on the PMTs
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
index: "snorope",
run_range: [0, 0],
pass: 0,
comment: "",
timestamp: "",
enable: 1,

factory: "solid",
solid:"SNORope",

mother: "cavity",

material: "tensylon",

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [0.32, 0.7, 0.950],
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

factory: "solid",
solid:"SNOAV",

mother: "cavity",

material: "acrylic_sno",

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [0.24, 0.8, 0.950],
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

factory: "solid",
solid:"SNOSV",

mother: "av",

material: "lightwater_sno",

vis_invisible: 0,
//vis_style: "wireframe",
vis_color: [0.24, 0.8, 0.50],
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
vis_color: [0.0, .80, 1.0],
}
