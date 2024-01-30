{
  "super + shift + {r,c}" = "i3-msg {restart,reload}";
  "super + {s,w}"         = "i3-msg {stacking,tabbed}";
  
  # Show keybindings help
  "alt + F1"              = "KeybindingsHelp";
  
  # Open Terminal (alacritty)
  "super + Return"	      = "OpenApps --terminal";

  # hackthebox
  "super + k"  	          = "$HOME/.config/rofi/htb/machine_spawn.sh";
  
  "super + shift + k"     = "$HOME/.config/rofi/htb/machine_details.sh";
  
  "super + shift + i"     = "$HOME/.config/rofi/openvpn/vpn.sh";

  # Open floating Terminal
  "super + alt + Return"  = "OpenApps --floating";
  
  # Menu aplicaciones
  "super + @space"        = "OpenApps --menu";
  
  # Scratchpad
  "super + alt + o"       = "tdrop -m -w 70% -h 35% -y 0 -x 15%  --class scratch alacritty --class=scratch";

  # Power off, Reboot, Log out, Lockscreen, kill an app
  "ctrl + super + alt + {p,r,q,l,k}"  = "{systemctl poweroff, systemctl reboot,bspc quit,lockscreen -d,xkill}";
  
  # Apps
  "shift + alt + {b,g,e,p,r,t,w,m,v,k}" = "{OpenApps --browser, \
  	 vscodium, \
  	 OpenApps --filemanager, \
  	 pavucontrol, \
  	 OpenApps --ranger, \
  	 telegram-desktop, \
  	 OpenApps --athena-welcome, \
  	 virt-manager, \
  	 OpenApps --nvim, \
  	 OpenApps --music}";
  
  # Hide/Show Bar (Polybar and/or eww)
  "super + {h,u}"        =  "HideBar {-h,-u}";
  
  # Change transparency on focused window
  "ctrl + alt {plus,minus,t}"  =  "{picom-trans -c -o +3, picom-trans -c -o -1, picom-trans -c -d}";
  
  # Screenshot Now
  "Print"                      =  "$HOME/.config/rofi/screenshot/screenshot";
  
  
  # Reload sxhkd
  "super + Escape"             = "pkill -USR1 -x sxhkd; dunstify -u low -i ~/.config/bspwm/assets/reload.svg 'sxhkd' 'The configuration file has been reloaded successfully!'";
  
  # Random wallpaper
  "super + alt + w"            = "feh -z --no-fehbg --bg-fill ~/.config/bspwm/walls/";
  
  #
  # bspwm hotkeys
  #
  
  # Reload BSPWM
  "super + alt + r"            =  "bspc wm -r";
  
  # close and kill
  "super + {_,shift + }q"      =  "bspc node -{c,k}";
  
  ####
  
  
  # rotate desktop
  "super + r"                  =  "bspc node @/ --rotate {90,-90}";

  # Circulate the leaves of the tree
  "super + c" = "bspc node @/ --circulate {backward,forward}";
  
  # Make split ratios equal
  "super + equal" = "bspc node @/ --equalize";
  
  # Make split ratios balanced
  "super + minus" = "bspc node @/ --balance";
  
  # alternate between the tiled and monocle layout
  "super + m" = "bspc desktop -l next";
  
  # swap the current node and the biggest node
  "super + g" = "bspc node -s biggest";
  
  # set the window state
  "super + {t,shift + t,s,f}" = "bspc node -t {tiled,pseudo_tiled,floating,fullscreen}";
  
  # set the node flags
  "ctrl + alt {m,x,s,p,i}" = "bspc node -g {marked,locked,sticky,private,hidden}";
  
  # Focused desktop window gaps scroll
  "super + button{4,5}" = "bspc config -d focused window_gap $((`bspc config -d focused window_gap` {-,+} 5 ))";
  
  # Global window gaps scroll
  "super + alt + button{4,5}" = "bspc config window_gap $(( $(bspc config window_gap) {-,+} 5 ))";
  
  # focus the node in the given direction
  "super + {_,shift + }{Left,Down,Up,Right}" = "bspc node -{f,s} {west,south,north,east}";
  
  # focus the node for the given path jump
  "super + {p,b,comma,period}" = "bspc node -f @{parent,brother,first,second}";
  
  # focus the next/previous node in the current desktop
  "alt + {_,shift + }Tab" = "bspc node -f {next,prev}.local";
  
  # focus the next/previous desktop in the current monitor
  "super + alt + {Left,Right}" = "bspc desktop -f {prev,next}.local";
  
  # focus the last node/desktop
  "super + {grave,Tab}" = "bspc {node,desktop} -f last";
  
  # focus the older or newer node in the focus history
  "super + {o,i}" = "bspc wm -h off; bspc node {older,newer} -f; bspc wm -h on";
  
  # focus or send to the given desktop
  "super + {_,shift + }{1-9,0}" = "bspc {desktop -f,node -d} '^{1-9,10}'";

  #
  # preselect
  #
  
  # preselect the direction
  "super + ctrl + {Left,Down,Up,Right}" = "bspc node -p {west,south,north,east}";
  
  # preselect the ratio
  "super + ctrl + {1-9}" = "bspc node -o 0.{1-9}";
  
  # cancel the preselection for the focused node
  "super + ctrl + space" = "bspc node -p cancel";
  
  # cancel the preselection for the focused desktop
  "super + ctrl + shift + space" = "bspc query -N -d | xargs -I id -n 1 bspc node id -p cancel";
  
  #
  # move/resize
  #
  
  # expand a window by moving one of its side outward
  "super + alt + {h,j,k,l}" = "bspc node -z {left -10 0,bottom 0 10,top 0 -10,right 10 0}";
  
  # contract a window by moving one of its side inward
  "super + alt + shift + {h,j,k,l}" = "bspc node -z {right -10 0,top 0 10,bottom 0 -10,left 10 0}";
  
  # move a floating window
  "alt + shift {Left,Down,Up,Right}" = "bspc node -v {-10 0,0 10,0 -10,10 0}";
  
  # Manage brightness
  "XF86MonBrightness{Up,Down}" = "sh Brightness {up,down}";
  
  # Volume control
  "XF86Audio{RaiseVolume,LowerVolume,Mute}" = "Volume{ --inc, --dec, --toggle}";
  
  # Music Control
  "XF86Audio{Next,Prev,Play,Stop}" = "MediaControl {--next,--previous,--toggle,--stop}";
  
  
  ### Second Monitor
  
  # Send window to the second monitor
  "super + alt + shift + {Left,Right}" = "bspc node -m {prev,next} --follow";
  
  
  ## workspace list
  "ctrl + shift + w" = "workspace_list";

}