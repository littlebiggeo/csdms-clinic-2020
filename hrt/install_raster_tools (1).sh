#!/bin/bash

cd /content

echo "(1) Install Whitebox via pip"
pip -q install whitebox  > /dev/null 2>&1 

echo "(2) Install gdal via apt-get"
apt-get -q -y install python-gdal gdal-bin  > /dev/null 2>&1 

echo "(3) Install rasterio via pip"
pip -q install rasterio  > /dev/null 2>&1 

echo "(4) Install earthpy via pip"
pip -q install rasterio  > /dev/null 2>&1 

echo "(5) Download CSDMS 2020 clinic github repository"
git clone --quiet https://github.com/littlebiggeo/csdms-clinic-2020.git  > /dev/null 2>&1 

echo "(5) Ready to go"