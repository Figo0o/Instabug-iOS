require 'xcodeproj'
path_to_project = "${SOURCE_ROOT}/${PROJECT_NAME}.xcodeproj"
project = Xcodeproj::Project.open(path_to_project)
main_target = project.targets.first
phase = main_target.new_shell_script_build_phase("Name of your Phase")
phase.shell_script = "TEST"
project.save()
