#!/usr/bin/env bash

fonts_dir="${HOME}/.local/share/fonts"
if [ ! -d "${fonts_dir}" ]; then
    echo "mkdir -p $fonts_dir"
    mkdir -p "${fonts_dir}"
else
    echo "Found fonts dir $fonts_dir"
fi

cd $fonts_dir
echo "Working dir ${fonts_dir}"

# Fira font
version=6.2
zip=Fira_Code_v${version}.zip
curl --fail --location --show-error https://github.com/tonsky/FiraCode/releases/download/${version}/${zip} --output ${zip}
unzip -o -q -d ${fonts_dir} ${zip}
rm ${zip}
# Symbol font
version="v3.4.0"
zip="NerdFontsSymbolsOnly.zip"
curl --fail --location --show-error https://github.com/ryanoasis/nerd-fonts/releases/download/${version}/${zip} --output ${zip}
unzip -o -q -d ${fonts_dir} ${zip}
rm ${zip}

echo "fc-cache -f"
fc-cache -f

if [ $(fc-list | grep Fira | wc -l) -gt 0 ] && [ $(fc-list | grep Symbols | wc -l) -gt 0 ]
then
	echo "Fonts installed, please run test-fonts to verify symbols prints"
fi

