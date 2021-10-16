

################################################################################
### Head: Sys / Leftwm / wm_theme
##

sys_leftwm_get_wm_theme () {

	sys_profile_theme_config_load

}

sys_leftwm_set_wm_theme () {

	sys_profile_subject_config_prepare "theme" "$1"

	profile_theme_apply


}

sys_leftwm_set_wm_theme_default () {

	sys_profile_subject_config_prepare "theme" "main"

	profile_theme_apply


}

sys_leftwm_set_wm_theme_favorite () {

	sys_profile_subject_config_prepare "theme" "nord_aurora"

	profile_theme_apply


}

##
### Tail: Sys / Leftwm / wm_theme
################################################################################


################################################################################
### Head: Sys / Leftwm / keybind
##

sys_leftwm_get_keybind () {

	sys_profile_keybind_config_load

}

sys_leftwm_set_keybind () {

	sys_profile_subject_config_prepare "keybind" "$1"

	profile_keybind_apply


}

sys_leftwm_set_keybind_default () {

	sys_profile_subject_config_prepare "keybind" "default"

	profile_keybind_apply


}

sys_leftwm_set_keybind_favorite () {

	sys_profile_subject_config_prepare "keybind" "main"

	profile_keybind_apply


}

##
### Tail: Sys / Leftwm / keybind
################################################################################


################################################################################
### Head: Sys / Leftwm / rule
##

sys_leftwm_get_rule () {

	sys_profile_rule_config_load

}

sys_leftwm_set_rule () {

	sys_profile_subject_config_prepare "rule" "$1"

	profile_rule_apply


}

sys_leftwm_set_rule_default () {

	sys_profile_subject_config_prepare "rule" "default"

	profile_rule_apply


}

sys_leftwm_set_rule_favorite () {

	sys_profile_subject_config_prepare "rule" "main"

	profile_rule_apply


}

##
### Tail: Sys / Leftwm / rule
################################################################################
