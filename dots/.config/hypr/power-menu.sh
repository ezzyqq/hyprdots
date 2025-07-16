# Variants
options="Log Out\nShutdown\nReboot\nSuspend\nHibernate\nCancel"

choice=$(echo -e "$options" | wofi --dmenu --width=250 --height=300 --hide-scroll -p "Power" -i)

case "$choice" in
  *Log\ Out*) hyprctl dispatch exit ;;
  *Shutdown*) systemctl poweroff ;;
  *Reboot*) systemctl reboot ;;
  *Suspend*) systemctl suspend ;;
  *Hibernate*) systemctl hibernate ;;
  *) exit 0 ;;
esac

