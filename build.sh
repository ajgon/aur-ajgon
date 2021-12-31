#!/usr/bin/env bash

arch=x86_64
cwd=$(pwd)
cd src

for pkg in *; do
  path="${cwd}/src/${pkg}"

  cd "${path}"
  makepkg -scf
  mv *.zst "${cwd}/${arch}/"
done

cd "${cwd}/${arch}"
repo-add aur-ajgon.db.tar.gz *.pkg.tar.zst
mv aur-ajgon.db.tar.gz aur-ajgon.db
mv aur-ajgon.files.tar.gz aur-ajgon.files
