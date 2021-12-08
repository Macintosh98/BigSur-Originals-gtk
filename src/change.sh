NAMES=(   BigSur-Originals-Gtk-Blue-Dark   BigSur-Originals-Gtk-Green-Dark   BigSur-Originals-Gtk-Grey-Dark   BigSur-Originals-Gtk-Orange-Dark   BigSur-Originals-Gtk-Purple-Dark   BigSur-Originals-Gtk-Red-Dark   BigSur-Originals-Gtk-Blue-Light  BigSur-Originals-Gtk-Green-Light  BigSur-Originals-Gtk-Grey-Light  BigSur-Originals-Gtk-Orange-Light  BigSur-Originals-Gtk-Purple-Light  BigSur-Originals-Gtk-Red-Light   )
STR='@import url("title-buttons.css");'

for NAME in "${NAMES[@]}"
do
   echo "Installing $NAME"
   cp 3D/* $NAME/gtk-3.0
   echo $STR | tee -a $NAME/gtk-3.0/*
   rm -r $NAME/gnome-shell
#    if [[ "$NAME" == *"Dark"* ]]; then
#     echo $DARK | tee -a $NAME/gtk-3.0/gtk.css
#    fi
#    if [[ "$NAME" == *"Light"* ]]; then
#     echo $DARK | tee -a $NAME/gtk-3.0/gtk-dark.css
#     echo $LIGHT | tee -a $NAME/gtk-3.0/gtk.css
#    fi
done