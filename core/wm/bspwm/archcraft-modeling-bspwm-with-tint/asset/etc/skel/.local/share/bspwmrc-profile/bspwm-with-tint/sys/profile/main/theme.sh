

################################################################################
### Head: Skel / Theme
##

skel_theme () {
	main_theme_setting
}

main_theme_setting () {


	# theme
	bspc monitor -d Term Edit Web File Misc
	#bspc monitor -d 1 2 3 4 5

	bspc config border_width          4
	bspc config window_gap            8

	bspc config split_ratio           0.5

	bspc config borderless_monocle    true
	bspc config gapless_monocle       true
	bspc config single_monocle        false
	bspc config focus_follows_pointer false

	bspc config normal_border_color   "#a3be8c"
	bspc config active_border_color   "#b48ead"
	bspc config focused_border_color  "#bf616a"
	bspc config presel_feedback_color "#b48ead"


}

##
### Tail: Skel / Theme
################################################################################
