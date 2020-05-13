#!/bin/bash

cd /content

echo "(1) Install netcdf nose via pip"
pip -q install netCDF4 nose  > /dev/null 2>&1 

echo "(2) Install gdal via apt-get"
apt-get -q -y install python-gdal gdal-bin  > /dev/null 2>&1 

echo "(3) Download anuga_core github repository"
git clone --quiet https://github.com/GeoscienceAustralia/anuga_core.git  > /dev/null 2>&1 

echo "(4) Install anuga"

cd anuga_core
python setup.py --quiet install  > /dev/null 2>&1 
cd ../

echo "(5) Ready to go"
