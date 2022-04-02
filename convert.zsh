#!/bin/zsh


tail -n 1168 defying_gravity.html | 
    sed 's,</p>,\n,' |
    sed 's,<p>,,' |
    sed 's,“,``,g' |
    sed "s,”,'',g" |
    sed 's/<h2>/\\section*{/' |
    sed 's/<\/h2>/}/' |
    sed 's/<h1>/\\chapter{/' |
    sed 's/<\/h1>/}/' |
    sed 's/<\b>//' |
    sed 's/<\/b>//' |
    sed 's/<\/html>//' |
    sed 's/<\/body>//' |
    sed 's/&amp;/\\&/' |
    sed 's/$1/\\$1/' |
    sed 's/#3/\\#1/' |
    sed 's/<span class="s1">/{\\em /' |
    sed 's/<\/span>/}/'
