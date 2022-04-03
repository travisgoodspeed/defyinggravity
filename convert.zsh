#!/bin/zsh


tail -n 1168 defying_gravity.html | 
    sed 's,</p>,\n,' |
    sed 's,<p>,,g' |
    sed 's,“,``,g' |
    sed "s,”,'',g" |
    sed 's/<h2>/\\section*{/g' |
    sed 's/<\/h2>/}/g' |
    sed 's/<h1>/\\chapter{/g' |
    sed 's/<\/h1>/}/g' |
    sed 's/<\b>//g' |
    sed 's/<\/b>//g' |
    sed 's/<\/html>//g' |
    sed 's/<\/body>//g' |
    sed 's/&amp;/\\&/g' |
    sed 's/$1/\\$1/g' |
    sed 's/#3/\\#1/g' |
    sed 's/<span class="s1">/{\\em /g' |
    sed 's/<\/span>/}/g'
