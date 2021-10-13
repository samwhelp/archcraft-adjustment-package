#!/usr/bin/env bash


################################################################################
### Head: Init
##

THE_BASE_DIR_PATH="$(cd -- "$(dirname -- "$0")" ; pwd)"
THE_BASE_DIR_PATH="$THE_BASE_DIR_PATH/../ext"
source "$THE_BASE_DIR_PATH/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Model / Install
##

mod_install () {

	mod_install_bin_up
	mod_install_bin_ctrl
	mod_install_ext

	mod_install_sys_ext

	mod_install_sys_profile_default
	mod_install_sys_profile_default_enhance

	mod_install_sys_profile_main

	mod_install_sys_profile_nord_aurora
	mod_install_sys_profile_nord_polar_night
	mod_install_sys_profile_gruvbox


	#mod_install_sys_cache_profile

	mod_install_style_dir
	mod_install_share_style_profile_main

	mod_install_check


}


mod_install_bin_up () {

	echo "install -Dm755 $THE_PLAN_DIR_PATH/autostart $HOME/.config/herbstluftwm/autostart"
	install -Dm755 "$THE_PLAN_DIR_PATH/autostart" "$HOME/.config/herbstluftwm/autostart"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-up $HOME/.config/herbstluftwm/bin/hlwm-up"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-up" "$HOME/.config/herbstluftwm/bin/hlwm-up"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-up-xsettings $HOME/.config/herbstluftwm/bin/hlwm-up-xsettings"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-up-xsettings" "$HOME/.config/herbstluftwm/bin/hlwm-up-xsettings"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-up-wallpaper $HOME/.config/herbstluftwm/bin/hlwm-up-wallpaper"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-up-wallpaper" "$HOME/.config/herbstluftwm/bin/hlwm-up-wallpaper"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-up-compositor $HOME/.config/herbstluftwm/bin/hlwm-up-compositor"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-up-compositor" "$HOME/.config/herbstluftwm/bin/hlwm-up-compositor"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-up-panel $HOME/.config/herbstluftwm/bin/hlwm-up-panel"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-up-panel" "$HOME/.config/herbstluftwm/bin/hlwm-up-panel"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-up-applet $HOME/.config/herbstluftwm/bin/hlwm-up-applet"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-up-applet" "$HOME/.config/herbstluftwm/bin/hlwm-up-applet"

}

mod_install_bin_ctrl () {
	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-frame-ctrl $HOME/.config/herbstluftwm/bin/hlwm-frame-ctrl"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-frame-ctrl" "$HOME/.config/herbstluftwm/bin/hlwm-frame-ctrl"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-window-ctrl $HOME/.config/herbstluftwm/bin/hlwm-window-ctrl"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-window-ctrl" "$HOME/.config/herbstluftwm/bin/hlwm-window-ctrl"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-wallpaper-ctrl $HOME/.config/herbstluftwm/bin/hlwm-wallpaper-ctrl"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-wallpaper-ctrl" "$HOME/.config/herbstluftwm/bin/hlwm-wallpaper-ctrl"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-profile-ctrl $HOME/.config/herbstluftwm/bin/hlwm-profile-ctrl"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-profile-ctrl" "$HOME/.config/herbstluftwm/bin/hlwm-profile-ctrl"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-system-ctrl $HOME/.config/herbstluftwm/bin/hlwm-system-ctrl"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-system-ctrl" "$HOME/.config/herbstluftwm/bin/hlwm-system-ctrl"

	echo "install -Dm755 $THE_BIN_DIR_PATH/hlwm-focus-ctrl $HOME/.config/herbstluftwm/bin/hlwm-focus-ctrl"
	install -Dm755 "$THE_BIN_DIR_PATH/hlwm-focus-ctrl" "$HOME/.config/herbstluftwm/bin/hlwm-focus-ctrl"


}

mod_install_ext () {

	echo "install -Dm644 $THE_EXT_DIR_PATH/base.sh $HOME/.config/herbstluftwm/ext/base.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/base.sh" "$HOME/.config/herbstluftwm/ext/base.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/init.sh $HOME/.config/herbstluftwm/ext/init.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/init.sh" "$HOME/.config/herbstluftwm/ext/init.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/util.sh $HOME/.config/herbstluftwm/ext/util.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/util.sh" "$HOME/.config/herbstluftwm/ext/util.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/wallpaper.sh $HOME/.config/herbstluftwm/ext/wallpaper.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/wallpaper.sh" "$HOME/.config/herbstluftwm/ext/wallpaper.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/hlwm.sh $HOME/.config/herbstluftwm/ext/hlwm.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/hlwm.sh" "$HOME/.config/herbstluftwm/ext/hlwm.sh"

}

mod_install_sys_ext () {

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/init.sh $HOME/.config/herbstluftwm/sys/ext/init.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/init.sh" "$HOME/.config/herbstluftwm/sys/ext/init.sh"

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/skel.sh $HOME/.config/herbstluftwm/sys/ext/skel.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/skel.sh" "$HOME/.config/herbstluftwm/sys/ext/skel.sh"

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/default.sh $HOME/.config/herbstluftwm/sys/ext/default.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/default.sh" "$HOME/.config/herbstluftwm/sys/ext/default.sh"

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/profile.sh $HOME/.config/herbstluftwm/sys/ext/profile.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/profile.sh" "$HOME/.config/herbstluftwm/sys/ext/profile.sh"

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/hlwm.sh $HOME/.config/herbstluftwm/sys/ext/hlwm.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/hlwm.sh" "$HOME/.config/herbstluftwm/sys/ext/hlwm.sh"

}


mod_install_sys_profile_default () {

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default/keybind.sh $HOME/.config/herbstluftwm/sys/profile/default/keybind.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default/keybind.sh" "$HOME/.config/herbstluftwm/sys/profile/default/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default/theme.sh $HOME/.config/herbstluftwm/sys/profile/default/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default/theme.sh" "$HOME/.config/herbstluftwm/sys/profile/default/theme.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default/rule.sh $HOME/.config/herbstluftwm/sys/profile/default/rule.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default/rule.sh" "$HOME/.config/herbstluftwm/sys/profile/default/rule.sh"

}

mod_install_sys_profile_default_enhance () {

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default_enhance/keybind.sh $HOME/.config/herbstluftwm/sys/profile/default_enhance/keybind.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default_enhance/keybind.sh" "$HOME/.config/herbstluftwm/sys/profile/default_enhance/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default_enhance/theme.sh $HOME/.config/herbstluftwm/sys/profile/default_enhance/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default_enhance/theme.sh" "$HOME/.config/herbstluftwm/sys/profile/default_enhance/theme.sh"

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default_enhance/rule.sh $HOME/.config/herbstluftwm/sys/profile/default_enhance/rule.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default_enhance/rule.sh" "$HOME/.config/herbstluftwm/sys/profile/default_enhance/rule.sh"

}


mod_install_sys_profile_main () {

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/main/keybind.sh $HOME/.config/herbstluftwm/sys/profile/main/keybind.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/main/keybind.sh" "$HOME/.config/herbstluftwm/sys/profile/main/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/main/theme.sh $HOME/.config/herbstluftwm/sys/profile/main/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/main/theme.sh" "$HOME/.config/herbstluftwm/sys/profile/main/theme.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/main/rule.sh $HOME/.config/herbstluftwm/sys/profile/main/rule.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/main/rule.sh" "$HOME/.config/herbstluftwm/sys/profile/main/rule.sh"

}

mod_install_sys_profile_nord_aurora () {

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/nord_aurora/keybind.sh $HOME/.config/herbstluftwm/sys/profile/nord_aurora/keybind.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/nord_aurora/keybind.sh" "$HOME/.config/herbstluftwm/sys/profile/nord_aurora/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/nord_aurora/theme.sh $HOME/.config/herbstluftwm/sys/profile/nord_aurora/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/nord_aurora/theme.sh" "$HOME/.config/herbstluftwm/sys/profile/nord_aurora/theme.sh"

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/nord_aurora/rule.sh $HOME/.config/herbstluftwm/sys/profile/nord_aurora/rule.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/nord_aurora/rule.sh" "$HOME/.config/herbstluftwm/sys/profile/nord_aurora/rule.sh"

}

mod_install_sys_profile_nord_polar_night () {

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/nord_polar_night/keybind.sh $HOME/.config/herbstluftwm/sys/profile/nord_polar_night/keybind.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/nord_polar_night/keybind.sh" "$HOME/.config/herbstluftwm/sys/profile/nord_polar_night/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/nord_polar_night/theme.sh $HOME/.config/herbstluftwm/sys/profile/nord_polar_night/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/nord_polar_night/theme.sh" "$HOME/.config/herbstluftwm/sys/profile/nord_polar_night/theme.sh"

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/nord_polar_night/rule.sh $HOME/.config/herbstluftwm/sys/profile/nord_polar_night/rule.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/nord_polar_night/rule.sh" "$HOME/.config/herbstluftwm/sys/profile/nord_polar_night/rule.sh"

}

mod_install_sys_profile_gruvbox () {

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/gruvbox/keybind.sh $HOME/.config/herbstluftwm/sys/profile/gruvbox/keybind.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/gruvbox/keybind.sh" "$HOME/.config/herbstluftwm/sys/profile/gruvbox/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/gruvbox/theme.sh $HOME/.config/herbstluftwm/sys/profile/gruvbox/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/gruvbox/theme.sh" "$HOME/.config/herbstluftwm/sys/profile/gruvbox/theme.sh"

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/gruvbox/rule.sh $HOME/.config/herbstluftwm/sys/profile/gruvbox/rule.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/gruvbox/rule.sh" "$HOME/.config/herbstluftwm/sys/profile/gruvbox/rule.sh"

}


mod_install_sys_cache_profile () {

	echo "install -Dm644 $THE_SYS_CACHE_PROFILE_DIR_PATH/keybind.conf $HOME/.config/herbstluftwm/sys/cache/profile/keybind.conf"
	install -Dm644 "$THE_SYS_CACHE_PROFILE_DIR_PATH/keybind.conf" "$HOME/.config/herbstluftwm/sys/cache/profile/keybind.conf"

	echo "install -Dm644 $THE_SYS_CACHE_PROFILE_DIR_PATH/theme.conf $HOME/.config/herbstluftwm/sys/cache/profile/theme.conf"
	install -Dm644 "$THE_SYS_CACHE_PROFILE_DIR_PATH/theme.conf" "$HOME/.config/herbstluftwm/sys/cache/profile/theme.conf"

	echo "install -Dm644 $THE_SYS_CACHE_PROFILE_DIR_PATH/rule.conf $HOME/.config/herbstluftwm/sys/cache/profile/rule.conf"
	install -Dm644 "$THE_SYS_CACHE_PROFILE_DIR_PATH/rule.conf" "$HOME/.config/herbstluftwm/sys/cache/profile/rule.conf"

}

mod_install_style_dir () {

	if [ -a "$HOME/.config/herbstluftwm/style" ]; then
		return
	fi

	echo "cd $HOME/.config/herbstluftwm"
	cd "$HOME/.config/herbstluftwm"

	echo "ln -sf share/style-profile/main style"

	ln -sf share/style-profile/main style

	## man cd
	echo "cd $OLDPWD"
	cd "$OLDPWD"

}

mod_install_share_style_profile_main () {


	echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/picom/picom.conf $HOME/.config/herbstluftwm/share/style-profile/main/picom/picom.conf"
	install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/picom/picom.conf" "$HOME/.config/herbstluftwm/share/style-profile/main/picom/picom.conf"

	echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/xsettingsd/xsettingsd.conf $HOME/.config/herbstluftwm/share/style-profile/main/xsettingsd/xsettingsd.conf"
	install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/xsettingsd/xsettingsd.conf" "$HOME/.config/herbstluftwm/share/style-profile/main/xsettingsd/xsettingsd.conf"





	#echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/tint2/tint2rc $HOME/.config/herbstluftwm/share/style-profile/main/tint2/tint2rc"
	#install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/tint2/tint2rc" "$HOME/.config/herbstluftwm/share/style-profile/main/tint2/tint2rc"

	echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/tint2/top_panel/tint2rc $HOME/.config/herbstluftwm/share/style-profile/main/tint2/top_panel/tint2rc"
	install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/tint2/top_panel/tint2rc" "$HOME/.config/herbstluftwm/share/style-profile/main/tint2/top_panel/tint2rc"

	echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/tint2/bottom_panel/tint2rc $HOME/.config/herbstluftwm/share/style-profile/main/tint2/bottom_panel/tint2rc"
	install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/tint2/bottom_panel/tint2rc" "$HOME/.config/herbstluftwm/share/style-profile/main/tint2/bottom_panel/tint2rc"

	echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/tint2/top_bottom_panel/tint2rc_top $HOME/.config/herbstluftwm/share/style-profile/main/tint2/top_bottom_panel/tint2rc_top"
	install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/tint2/top_bottom_panel/tint2rc_top" "$HOME/.config/herbstluftwm/share/style-profile/main/tint2/top_bottom_panel/tint2rc_top"

	echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/tint2/top_bottom_panel/tint2rc_bottom $HOME/.config/herbstluftwm/share/style-profile/main/tint2/top_bottom_panel/tint2rc_bottom"
	install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/tint2/top_bottom_panel/tint2rc_bottom" "$HOME/.config/herbstluftwm/share/style-profile/main/tint2/top_bottom_panel/tint2rc_bottom"



}


mod_install_check () {
	echo
	is_command_exist 'tree' && tree "$HOME/.config/herbstluftwm"
}


##
### Tail: Model / Install
################################################################################


################################################################################
### Head: Main
##

__main__ () {
	mod_install "$@"
}

__main__ "$@"

##
### Tail: Main
################################################################################
