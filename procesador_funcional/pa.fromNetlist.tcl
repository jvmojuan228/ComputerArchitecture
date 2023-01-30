
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name procesador -dir "C:/Users/ferna/Documents/arquitecturaCOM/procesador/planAhead_run_2" -part xc7a100tcsg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/ferna/Documents/arquitecturaCOM/procesador/procesador.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/ferna/Documents/arquitecturaCOM/procesador} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "procesador.ucf" [current_fileset -constrset]
add_files [list {procesador.ucf}] -fileset [get_property constrset [current_run]]
link_design
