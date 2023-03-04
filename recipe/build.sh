#!/bin/bash -x -e


mkdir build
cd build
${BUILD_PREFIX}/bin/cmake --version
${BUILD_PREFIX}/bin/cmake -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_PREFIX_PATH=${PREFIX} \
  -DCMAKE_BUILD_TYPE=${CMAKE_BUILD_TYPE} \
  -DQCAT_USE_BUNDLES=OFF \
  ${SRC_DIR}

${BUILD_PREFIX}/bin/make -j${CPU_COUNT}
${BUILD_PREFIX}/bin/make install PREFIX=${PREFIX}
