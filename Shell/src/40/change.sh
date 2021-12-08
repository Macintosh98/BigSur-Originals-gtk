LIGHT="
#panel {
  background-color: rgba(222, 222, 222, 0.5);
    border-radius: 0px;
  margin: 0px;
}

#dashtodockContainer.extended #dash {
  background-color: rgba(222, 222, 222, 0.5);
}

#dashtodockContainer.extended:overview #dash {
  background-color: rgba(222, 222, 222, 0.2);
}

#dashtodockContainer #dash .dash-background {
  background-color: rgba(222, 222, 222, 0.5);
}

#dashtodockContainer.transparent #dash .dash-background {
  background-color: rgba(222, 222, 222, 0.5);
}

#dashtodockContainer:overview #dash .dash-background {
  background-color: rgba(222, 222, 222, 0.2);
}

#dashtodockContainer.opaque.extended:overview #dash .dash-background, #dashtodockContainer.transparent.extended:overview #dash .dash-background {
  background-color: rgba(222, 222, 222,0.2);
}

.slider {
  -barlevel-height: 15px;
}
"

DARK="
#panel {
  background-color: rgba(16, 16, 16, 0.5);
    border-radius: 0px;
  margin: 0px;
}

#dashtodockContainer.extended #dash {
  background-color: rgba(16,16,16, 0.5);
}

#dashtodockContainer.extended:overview #dash {
  background-color: rgba(16,16,16, 0.2);
}

#dashtodockContainer #dash .dash-background {
  background-color: rgba(16,16,16, 0.5);
}

#dashtodockContainer.transparent #dash .dash-background {
  background-color: rgba(16,16,16, 0.5);
}

#dashtodockContainer:overview #dash .dash-background {
  background-color: rgba(16,16,16, 0.2);
}

#dashtodockContainer.opaque.extended:overview #dash .dash-background, #dashtodockContainer.transparent.extended:overview #dash .dash-background {
  background-color: rgba(16,16,16,0.2);
}

.slider {
  -barlevel-height: 15px;
}
"

NAMES=( BigSur-Originals-Shell-40-green-dark   BigSur-Originals-Shell-40-grey-light    BigSur-Originals-Shell-40-pink-dark    BigSur-Originals-Shell-40-purple-light  BigSur-Originals-Shell-40-yellow-dark   BigSur-Originals-Shell-40-blue-dark   BigSur-Originals-Shell-40-green-light  BigSur-Originals-Shell-40-orange-dark   BigSur-Originals-Shell-40-pink-light   BigSur-Originals-Shell-40-red-dark      BigSur-Originals-Shell-40-yellow-light   BigSur-Originals-Shell-40-blue-light  BigSur-Originals-Shell-40-grey-dark    BigSur-Originals-Shell-40-orange-light  BigSur-Originals-Shell-40-purple-dark  BigSur-Originals-Shell-40-red-light )
# NAMES=( BigSur-Originals-Shell-40-blue-dark   BigSur-Originals-Shell-40-blue-light )

for NAME in "${NAMES[@]}"
do
   echo "Installing $NAME"
    for dir in $NAME/*; 
    do
            if [[ "$dir" == *"gnome-shell"* ]]; then
                continue
            fi
        rm -r $dir
    done

    if [[ "$NAME" == *"dark"* ]]; then
        echo $DARK | tee -a $NAME/gnome-shell/gnome-shell.css
    fi
    if [[ "$NAME" == *"light"* ]]; then
        echo $LIGHT | tee -a $NAME/gnome-shell/gnome-shell.css
    fi
  zip -r $NAME.zip $NAME
done