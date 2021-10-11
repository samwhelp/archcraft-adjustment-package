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

	echo "install -Dm644 $THE_PLAN_DIR_PATH/rc.xml $HOME/.config/openbox/rc.xml"
	install -Dm644 "$THE_PLAN_DIR_PATH/rc.xml" "$HOME/.config/openbox/rc.xml"

	echo "install -Dm644 $THE_PLAN_DIR_PATH/menu.xml $HOME/.config/openbox/menu.xml"
	install -Dm644 "$THE_PLAN_DIR_PATH/menu.xml" "$HOME/.config/openbox/menu.xml"

	echo "install -Dm644 $THE_PLAN_DIR_PATH/environment $HOME/.config/openbox/environment"
	install -Dm644 "$THE_PLAN_DIR_PATH/environment" "$HOME/.config/openbox/environment"

	echo "install -Dm755 $THE_PLAN_DIR_PATH/autostart $HOME/.config/openbox/autostart"
	install -Dm755 "$THE_PLAN_DIR_PATH/autostart" "$HOME/.config/openbox/autostart"

	echo "install -Dm755 $THE_PLAN_DIR_PATH/up.sh $HOME/.config/openbox/up.sh"
	install -Dm755 "$THE_PLAN_DIR_PATH/up.sh" "$HOME/.config/openbox/up.sh"

	echo "install -Dm755 $THE_BIN_DIR_PATH/openbox-up $HOME/.config/openbox/bin/openbox-up"
	install -Dm755 "$THE_BIN_DIR_PATH/openbox-up" "$HOME/.config/openbox/bin/openbox-up"

	echo "install -Dm755 $THE_BIN_DIR_PATH/openbox-up-xsettings $HOME/.config/openbox/bin/openbox-up-xsettings"
	install -Dm755 "$THE_BIN_DIR_PATH/openbox-up-xsettings" "$HOME/.config/openbox/bin/openbox-up-xsettings"

	echo "install -Dm755 $THE_BIN_DIR_PATH/openbox-up-wallpaper $HOME/.config/openbox/bin/openbox-up-wallpaper"
	install -Dm755 "$THE_BIN_DIR_PATH/openbox-up-wallpaper" "$HOME/.config/openbox/bin/openbox-up-wallpaper"

	echo "install -Dm755 $THE_BIN_DIR_PATH/openbox-up-compositor $HOME/.config/openbox/bin/openbox-up-compositor"
	install -Dm755 "$THE_BIN_DIR_PATH/openbox-up-compositor" "$HOME/.config/openbox/bin/openbox-up-compositor"

	echo "install -Dm755 $THE_BIN_DIR_PATH/openbox-up-panel $HOME/.config/openbox/bin/openbox-up-panel"
	install -Dm755 "$THE_BIN_DIR_PATH/openbox-up-panel" "$HOME/.config/openbox/bin/openbox-up-panel"

	echo "install -Dm755 $THE_BIN_DIR_PATH/openbox-up-applet $HOME/.config/openbox/bin/openbox-up-applet"
	install -Dm755 "$THE_BIN_DIR_PATH/openbox-up-applet" "$HOME/.config/openbox/bin/openbox-up-applet"

}

mod_install_bin_ctrl () {

	echo "install -Dm755 $THE_BIN_DIR_PATH/openbox-wallpaper-ctrl $HOME/.config/openbox/bin/openbox-wallpaper-ctrl"
	install -Dm755 "$THE_BIN_DIR_PATH/openbox-wallpaper-ctrl" "$HOME/.config/openbox/bin/openbox-wallpaper-ctrl"

	echo "install -Dm755 $THE_BIN_DIR_PATH/openbox-profile-ctrl $HOME/.config/openbox/bin/openbox-profile-ctrl"
	install -Dm755 "$THE_BIN_DIR_PATH/openbox-profile-ctrl" "$HOME/.config/openbox/bin/openbox-profile-ctrl"

}

mod_install_ext () {

	echo "install -Dm644 $THE_EXT_DIR_PATH/base.sh $HOME/.config/openbox/ext/base.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/base.sh" "$HOME/.config/openbox/ext/base.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/init.sh $HOME/.config/openbox/ext/init.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/init.sh" "$HOME/.config/openbox/ext/init.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/util.sh $HOME/.config/openbox/ext/util.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/util.sh" "$HOME/.config/openbox/ext/util.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/wallpaper.sh $HOME/.config/openbox/ext/wallpaper.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/wallpaper.sh" "$HOME/.config/openbox/ext/wallpaper.sh"

	echo "install -Dm644 $THE_EXT_DIR_PATH/openbox.sh $HOME/.config/openbox/ext/openbox.sh"
	install -Dm644 "$THE_EXT_DIR_PATH/openbox.sh" "$HOME/.config/openbox/ext/openbox.sh"

}

mod_install_sys_ext () {

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/init.sh $HOME/.config/openbox/sys/ext/init.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/init.sh" "$HOME/.config/openbox/sys/ext/init.sh"

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/skel.sh $HOME/.config/openbox/sys/ext/skel.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/skel.sh" "$HOME/.config/openbox/sys/ext/skel.sh"

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/default.sh $HOME/.config/openbox/sys/ext/default.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/default.sh" "$HOME/.config/openbox/sys/ext/default.sh"

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/profile.sh $HOME/.config/openbox/sys/ext/profile.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/profile.sh" "$HOME/.config/openbox/sys/ext/profile.sh"

	echo "install -Dm644 $THE_SYS_EXT_DIR_PATH/openbox.sh $HOME/.config/openbox/sys/ext/openbox.sh"
	install -Dm644 "$THE_SYS_EXT_DIR_PATH/openbox.sh" "$HOME/.config/openbox/sys/ext/openbox.sh"

}


mod_install_sys_profile_default () {

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default/keybind.sh $HOME/.config/openbox/sys/profile/default/keybind.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default/keybind.sh" "$HOME/.config/openbox/sys/profile/default/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default/theme.sh $HOME/.config/openbox/sys/profile/default/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default/theme.sh" "$HOME/.config/openbox/sys/profile/default/theme.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/default/rule.sh $HOME/.config/openbox/sys/profile/default/rule.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/default/rule.sh" "$HOME/.config/openbox/sys/profile/default/rule.sh"

}


mod_install_sys_profile_main () {

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/main/keybind.sh $HOME/.config/openbox/sys/profile/main/keybind.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/main/keybind.sh" "$HOME/.config/openbox/sys/profile/main/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/main/theme.sh $HOME/.config/openbox/sys/profile/main/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/main/theme.sh" "$HOME/.config/openbox/sys/profile/main/theme.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/main/rule.sh $HOME/.config/openbox/sys/profile/main/rule.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/main/rule.sh" "$HOME/.config/openbox/sys/profile/main/rule.sh"

}

mod_install_sys_profile_nord_aurora () {

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/nord_aurora/keybind.sh $HOME/.config/openbox/sys/profile/nord_aurora/keybind.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/nord_aurora/keybind.sh" "$HOME/.config/openbox/sys/profile/nord_aurora/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/nord_aurora/theme.sh $HOME/.config/openbox/sys/profile/nord_aurora/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/nord_aurora/theme.sh" "$HOME/.config/openbox/sys/profile/nord_aurora/theme.sh"

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/nord_aurora/rule.sh $HOME/.config/openbox/sys/profile/nord_aurora/rule.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/nord_aurora/rule.sh" "$HOME/.config/openbox/sys/profile/nord_aurora/rule.sh"

}

mod_install_sys_profile_nord_polar_night () {

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/nord_polar_night/keybind.sh $HOME/.config/openbox/sys/profile/nord_polar_night/keybind.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/nord_polar_night/keybind.sh" "$HOME/.config/openbox/sys/profile/nord_polar_night/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/nord_polar_night/theme.sh $HOME/.config/openbox/sys/profile/nord_polar_night/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/nord_polar_night/theme.sh" "$HOME/.config/openbox/sys/profile/nord_polar_night/theme.sh"

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/nord_polar_night/rule.sh $HOME/.config/openbox/sys/profile/nord_polar_night/rule.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/nord_polar_night/rule.sh" "$HOME/.config/openbox/sys/profile/nord_polar_night/rule.sh"

}

mod_install_sys_profile_gruvbox () {

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/gruvbox/keybind.sh $HOME/.config/openbox/sys/profile/gruvbox/keybind.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/gruvbox/keybind.sh" "$HOME/.config/openbox/sys/profile/gruvbox/keybind.sh"

	echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/gruvbox/theme.sh $HOME/.config/openbox/sys/profile/gruvbox/theme.sh"
	install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/gruvbox/theme.sh" "$HOME/.config/openbox/sys/profile/gruvbox/theme.sh"

	#echo "install -Dm644 $THE_SYS_PROFILE_DIR_PATH/gruvbox/rule.sh $HOME/.config/openbox/sys/profile/gruvbox/rule.sh"
	#install -Dm644 "$THE_SYS_PROFILE_DIR_PATH/gruvbox/rule.sh" "$HOME/.config/openbox/sys/profile/gruvbox/rule.sh"

}


mod_install_sys_cache_profile () {

	echo "install -Dm644 $THE_SYS_CACHE_PROFILE_DIR_PATH/keybind.conf $HOME/.config/openbox/sys/cache/profile/keybind.conf"
	install -Dm644 "$THE_SYS_CACHE_PROFILE_DIR_PATH/keybind.conf" "$HOME/.config/openbox/sys/cache/profile/keybind.conf"

	echo "install -Dm644 $THE_SYS_CACHE_PROFILE_DIR_PATH/theme.conf $HOME/.config/openbox/sys/cache/profile/theme.conf"
	install -Dm644 "$THE_SYS_CACHE_PROFILE_DIR_PATH/theme.conf" "$HOME/.config/openbox/sys/cache/profile/theme.conf"

	echo "install -Dm644 $THE_SYS_CACHE_PROFILE_DIR_PATH/rule.conf $HOME/.config/openbox/sys/cache/profile/rule.conf"
	install -Dm644 "$THE_SYS_CACHE_PROFILE_DIR_PATH/rule.conf" "$HOME/.config/openbox/sys/cache/profile/rule.conf"

}

mod_install_style_dir () {

	if [ -a "$HOME/.config/openbox/style" ]; then
		return
	fi

	echo "cd $HOME/.config/openbox"
	cd "$HOME/.config/openbox"

	echo "ln -sf share/style-profile/main style"

	ln -sf share/style-profile/main style

	## man cd
	echo "cd $OLDPWD"
	cd "$OLDPWD"

}

mod_install_share_style_profile_main () {

	echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/picom/picom.conf $HOME/.config/openbox/share/style-profile/main/picom/picom.conf"
	install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/picom/picom.conf" "$HOME/.config/openbox/share/style-profile/main/picom/picom.conf"

	echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/xsettingsd/xsettingsd.conf $HOME/.config/openbox/share/style-profile/main/xsettingsd/xsettingsd.conf"
	install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/xsettingsd/xsettingsd.conf" "$HOME/.config/openbox/share/style-profile/main/xsettingsd/xsettingsd.conf"




	#echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/tint2/tint2rc $HOME/.config/openbox/share/style-profile/main/tint2/tint2rc"
	#install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/tint2/tint2rc" "$HOME/.config/openbox/share/style-profile/main/tint2/tint2rc"

	echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/tint2/top_panel/tint2rc $HOME/.config/openbox/share/style-profile/main/tint2/top_panel/tint2rc"
	install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/tint2/top_panel/tint2rc" "$HOME/.config/openbox/share/style-profile/main/tint2/top_panel/tint2rc"

	echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/tint2/bottom_panel/tint2rc $HOME/.config/openbox/share/style-profile/main/tint2/bottom_panel/tint2rc"
	install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/tint2/bottom_panel/tint2rc" "$HOME/.config/openbox/share/style-profile/main/tint2/bottom_panel/tint2rc"

	echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/tint2/top_bottom_panel/tint2rc_top $HOME/.config/openbox/share/style-profile/main/tint2/top_bottom_panel/tint2rc_top"
	install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/tint2/top_bottom_panel/tint2rc_top" "$HOME/.config/openbox/share/style-profile/main/tint2/top_bottom_panel/tint2rc_top"

	echo "install -Dm644 $THE_SHARE_DIR_PATH/style-profile/main/tint2/top_bottom_panel/tint2rc_bottom $HOME/.config/openbox/share/style-profile/main/tint2/top_bottom_panel/tint2rc_bottom"
	install -Dm644 "$THE_SHARE_DIR_PATH/style-profile/main/tint2/top_bottom_panel/tint2rc_bottom" "$HOME/.config/openbox/share/style-profile/main/tint2/top_bottom_panel/tint2rc_bottom"

}


mod_install_check () {
	echo
	is_command_exist 'tree' && tree "$HOME/.config/openbox"
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
