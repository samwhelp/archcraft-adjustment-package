
# archcraft-modeling-mousepad

## Note

run

``` sh
dconf dump /
```

show

```
[org/xfce/mousepad/preferences/file]
add-last-end-of-line=true

[org/xfce/mousepad/preferences/view]
auto-indent=true
color-scheme='oblivion'
font-name='Monospace 16'
highlight-current-line=true
match-braces=true
show-line-endings=false
show-line-numbers=true
show-right-margin=true
show-whitespace=true
smart-backspace=false
smart-home-end='after'
tab-width=uint32 4
use-default-monospace-font=false
word-wrap=true

[org/xfce/mousepad/preferences/window]
always-show-tabs=true
cycle-tabs=true
old-style-menu=true
statusbar-visible=true
toolbar-style='icons'
toolbar-visible=true

[org/xfce/mousepad/state/search]
highlight-all=true

[org/xfce/mousepad/state/window]
fullscreen=false
height=uint32 628
maximized=false
width=uint32 668
```

them replace `/` to `.`

and save to file `90_archcraft-adjustment-mousepad.gschema.override`

then put to path `/usr/share/glib-2.0/schemas/90_archcraft-adjustment-mousepad.gschema.override`

``` sh
sudo install -Dm644 90_archcraft-adjustment-mousepad.gschema.override /usr/share/glib-2.0/schemas/90_archcraft-adjustment-mousepad.gschema.override
```

then compile glib schemas

``` sh
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
```

then dump all mousepad gsettings

``` sh
gsettings list-recursively | grep mousepad
```

show

```
org.xfce.mousepad.plugins.gspell.preferences default-language 'en_US'
org.xfce.mousepad.state.window fullscreen false
org.xfce.mousepad.state.window width uint32 668
org.xfce.mousepad.state.window left uint32 0
org.xfce.mousepad.state.window top uint32 0
org.xfce.mousepad.state.window maximized false
org.xfce.mousepad.state.window height uint32 628
org.xfce.mousepad.preferences.view.show-whitespace leading true
org.xfce.mousepad.preferences.view.show-whitespace inside true
org.xfce.mousepad.preferences.view.show-whitespace trailing true
org.xfce.mousepad.state.search match-whole-word false
org.xfce.mousepad.state.search direction uint32 1
org.xfce.mousepad.state.search enable-regex false
org.xfce.mousepad.state.search incremental false
org.xfce.mousepad.state.search highlight-all true
org.xfce.mousepad.state.search replace-all false
org.xfce.mousepad.state.search replace-all-location uint32 1
org.xfce.mousepad.state.search match-case false
org.xfce.mousepad.state.search wrap-around true
org.xfce.mousepad.preferences.window toolbar-visible-in-fullscreen 'auto'
org.xfce.mousepad.preferences.window remember-size true
org.xfce.mousepad.preferences.window client-side-decorations true
org.xfce.mousepad.preferences.window menubar-visible-in-fullscreen 'auto'
org.xfce.mousepad.preferences.window toolbar-visible true
org.xfce.mousepad.preferences.window opening-mode 'tab'
org.xfce.mousepad.preferences.window old-style-menu true
org.xfce.mousepad.preferences.window always-show-tabs true
org.xfce.mousepad.preferences.window recent-menu-items uint32 10
org.xfce.mousepad.preferences.window cycle-tabs true
org.xfce.mousepad.preferences.window statusbar-visible true
org.xfce.mousepad.preferences.window expand-tabs true
org.xfce.mousepad.preferences.window path-in-title true
org.xfce.mousepad.preferences.window statusbar-visible-in-fullscreen 'auto'
org.xfce.mousepad.preferences.window default-tab-sizes '2,3,4,8'
org.xfce.mousepad.preferences.window toolbar-style 'icons'
org.xfce.mousepad.preferences.window menubar-visible true
org.xfce.mousepad.preferences.window remember-position false
org.xfce.mousepad.preferences.window remember-state true
org.xfce.mousepad.preferences.window toolbar-icon-size 'small-toolbar'
org.xfce.mousepad.preferences.file add-last-end-of-line true
org.xfce.mousepad.preferences.file session-restore 'after-a-crash'
org.xfce.mousepad.preferences.file monitor-disabling-timer uint32 500
org.xfce.mousepad.preferences.file make-backup false
org.xfce.mousepad.preferences.file autosave-timer uint32 30
org.xfce.mousepad.preferences.file default-encoding 'UTF-8'
org.xfce.mousepad.preferences.file monitor-changes true
org.xfce.mousepad.state.application enabled-plugins @as []
org.xfce.mousepad.state.application session @as []
org.xfce.mousepad.preferences.view match-braces true
org.xfce.mousepad.preferences.view show-whitespace true
org.xfce.mousepad.preferences.view smart-backspace false
org.xfce.mousepad.preferences.view smart-home-end 'after'
org.xfce.mousepad.preferences.view color-scheme 'oblivion'
org.xfce.mousepad.preferences.view show-right-margin true
org.xfce.mousepad.preferences.view show-line-marks false
org.xfce.mousepad.preferences.view show-line-endings false
org.xfce.mousepad.preferences.view indent-on-tab true
org.xfce.mousepad.preferences.view auto-indent true
org.xfce.mousepad.preferences.view insert-spaces false
org.xfce.mousepad.preferences.view highlight-current-line true
org.xfce.mousepad.preferences.view tab-width uint32 4
org.xfce.mousepad.preferences.view show-line-numbers true
org.xfce.mousepad.preferences.view word-wrap true
org.xfce.mousepad.preferences.view use-default-monospace-font false
org.xfce.mousepad.preferences.view indent-width -1
org.xfce.mousepad.preferences.view font-name 'Monospace 16'
org.xfce.mousepad.preferences.view right-margin-position uint32 80
```

try `org.xfce.mousepad.preferences.view color-scheme`

### set

``` sh
gsettings get org.xfce.mousepad.preferences.view color-scheme
```

show

```
'oblivion'
```

run

``` sh
gsettings set org.xfce.mousepad.preferences.view color-scheme 'solarized-dark'
```

run

``` sh
gsettings get org.xfce.mousepad.preferences.view color-scheme
```

show

```
'solarized-dark'
```

### reset

run

``` sh
gsettings reset org.xfce.mousepad.preferences.view color-scheme
```

run

``` sh
gsettings get org.xfce.mousepad.preferences.view color-scheme
```

show

```
'oblivion'
```



## explore


run

``` sh
pacman -Ql mousepad -q | grep schemas
```

show

```
/usr/share/glib-2.0/schemas/
/usr/share/glib-2.0/schemas/org.xfce.mousepad.gschema.xml
/usr/share/glib-2.0/schemas/org.xfce.mousepad.plugins.gspell.gschema.xml
```

run

``` sh
grep 'color-scheme' /usr/share/glib-2.0/schemas/org.xfce.mousepad.gschema.xml -A 7
```

show

```
    <key name="color-scheme" type="s">
      <default>'none'</default>
      <summary>Color scheme</summary>
      <description>
        Name of the color scheme to use to highlight syntax or 'none' for
        no syntax highlighting.
      </description>
    </key>
```

run

``` sh
grep 'color-scheme' /usr/share/glib-2.0/schemas/90_archcraft-adjustment-mousepad.gschema.override
```

show

```
color-scheme='oblivion'
```

### gtksourceview

* https://draculatheme.com/mousepad
* https://github.com/dracula/mousepad


run

``` sh
pamac search gtksourceview
```

show

```
yaru-gtksourceview-theme                    21.10.1-1               chaotic-aur 
    Yaru default ubuntu gtksourceview theme
gtksourceviewmm-docs                        1:3.18.0-5              community 
    Developer documentation for
    gtksourceviewmm
gtksourceviewmm                             1:3.18.0-5              community 
    C++ bindings for the gtksourceview
    library
gtksourceview5                              5.2.0-1                 chaotic-aur 
    A text widget adding syntax
    highlighting and more to GNOME
gtksourceview4                  [Installed] 4.8.2-1                 extra 
    A text widget adding syntax
    highlighting and more to GNOME
gtksourceview3                  [Installed] 3.24.11+28+g73e57b57-1  extra 
    A text widget adding syntax
    highlighting and more to GNOME
```

run

``` sh
pacman -Ql gtksourceview3 | grep styles
```

show

```
gtksourceview3 /usr/include/gtksourceview-3.0/gtksourceview/gtksourcestylescheme.h
gtksourceview3 /usr/include/gtksourceview-3.0/gtksourceview/gtksourcestyleschemechooser.h
gtksourceview3 /usr/include/gtksourceview-3.0/gtksourceview/gtksourcestyleschemechooserbutton.h
gtksourceview3 /usr/include/gtksourceview-3.0/gtksourceview/gtksourcestyleschemechooserwidget.h
gtksourceview3 /usr/include/gtksourceview-3.0/gtksourceview/gtksourcestyleschememanager.h
gtksourceview3 /usr/share/gtksourceview-3.0/styles/
gtksourceview3 /usr/share/gtksourceview-3.0/styles/classic.xml
gtksourceview3 /usr/share/gtksourceview-3.0/styles/cobalt.xml
gtksourceview3 /usr/share/gtksourceview-3.0/styles/kate.xml
gtksourceview3 /usr/share/gtksourceview-3.0/styles/oblivion.xml
gtksourceview3 /usr/share/gtksourceview-3.0/styles/solarized-dark.xml
gtksourceview3 /usr/share/gtksourceview-3.0/styles/solarized-light.xml
gtksourceview3 /usr/share/gtksourceview-3.0/styles/styles.rng
gtksourceview3 /usr/share/gtksourceview-3.0/styles/tango.xml
```

run

``` sh
ls -1 /usr/share/gtksourceview-3.0/styles/
``

show

```
classic.xml
cobalt.xml
kate.xml
oblivion.xml
solarized-dark.xml
solarized-light.xml
styles.rng
tango.xml
```







## Reference

* https://wiki.archlinux.org/title/Creating_packages
* https://wiki.archlinux.org/title/Arch_User_Repository
* https://archlinux.org/groups/x86_64/base-devel/
* https://wiki.archlinux.org/title/pacman
* https://wiki.archlinux.org/title/makepkg
* https://wiki.archlinux.org/title/PKGBUILD
* https://wiki.archlinux.org/title/Arch_package_guidelines
