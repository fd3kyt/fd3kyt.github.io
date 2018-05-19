#!/usr/bin/env bash

# https://github.com/richleland/pygments-css
theme=trac
pygmentize -S "${theme}" -f html -a .highlight > "${theme}"_pygments.css

# https://gohugo.io/content-management/syntax-highlighting/#generate-syntax-highlighter-css
theme=trac
hugo gen chromastyles --style="${theme}" > "${theme}"_chroma.css

theme=github
hugo gen chromastyles --style="${theme}" > "${theme}"_chroma.css
