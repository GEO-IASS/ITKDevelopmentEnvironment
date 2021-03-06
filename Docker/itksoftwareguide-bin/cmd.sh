#!/bin/sh

cd /home/itk/bin
mkdir -p ITKSoftwareGuide
cd ITKSoftwareGuide
if test ! -e CMakeCache.txt; then
  cmake \
    -DITKSoftwareGuide_SUPERBUILD:BOOL=OFF \
    -DITK_SOURCE_DIR:PATH=/home/itk/src/ITK \
    -DITK_BINARY_DIR:PATH=/home/itk/bin/ITK \
    -DITK_DIR:PATH=/home/itk/bin/ITK \
    -DITK_EXECUTABLES_DIR:PATH=/home/itk/bin/ITK/bin \
      /home/itk/src/ITKSoftwareGuide
else
  cmake .
fi
make
