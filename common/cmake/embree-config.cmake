## ======================================================================== ##
## Copyright 2009-2018 Intel Corporation                                    ##
##                                                                          ##
## Licensed under the Apache License, Version 2.0 (the "License");          ##
## you may not use this file except in compliance with the License.         ##
## You may obtain a copy of the License at                                  ##
##                                                                          ##
##     http://www.apache.org/licenses/LICENSE-2.0                           ##
##                                                                          ##
## Unless required by applicable law or agreed to in writing, software      ##
## distributed under the License is distributed on an "AS IS" BASIS,        ##
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. ##
## See the License for the specific language governing permissions and      ##
## limitations under the License.                                           ##
## ======================================================================== ##

SET(EMBREE_ROOT_DIR ${CMAKE_CURRENT_LIST_DIR}/@EMBREE_RELATIV_ROOT_DIR@)
GET_FILENAME_COMPONENT(EMBREE_ROOT_DIR "${EMBREE_ROOT_DIR}" ABSOLUTE)

SET(EMBREE_INCLUDE_DIRS ${EMBREE_ROOT_DIR}/@CMAKE_INSTALL_INCLUDEDIR@)
SET(EMBREE_LIBRARY ${EMBREE_ROOT_DIR}/@CMAKE_INSTALL_LIBDIR@/@EMBREE_LIBRARY_NAME@)
SET(EMBREE_LIBRARIES ${EMBREE_LIBRARY})

MARK_AS_ADVANCED(embree_DIR)

SET(EMBREE_VERSION @EMBREE_VERSION@)
SET(EMBREE_VERSION_MAJOR @EMBREE_VERSION_MAJOR@)
SET(EMBREE_VERSION_MINOR @EMBREE_VERSION_MINOR@)
SET(EMBREE_VERSION_PATCH @EMBREE_VERSION_PATCH@)
SET(EMBREE_VERSION_NOTE "@EMBREE_VERSION_NOTE@")

SET(EMBREE_MAX_ISA @EMBREE_MAX_ISA@)
SET(EMBREE_ISA_SSE2  @EMBREE_ISA_SSE2@)
SET(EMBREE_ISA_SSE42 @EMBREE_ISA_SSE42@)
SET(EMBREE_ISA_AVX @EMBREE_ISA_AVX@) 
SET(EMBREE_ISA_AVX2  @EMBREE_ISA_AVX2@)
SET(EMBREE_ISA_AVX512KNL @EMBREE_ISA_AVX512KNL@)
SET(EMBREE_ISA_AVX512SKX @EMBREE_ISA_AVX512SKX@)

SET(EMBREE_BUILD_TYPE @CMAKE_BUILD_TYPE@)
SET(EMBREE_ISPC_SUPPORT @EMBREE_ISPC_SUPPORT@)
SET(EMBREE_STATIC_LIB @EMBREE_STATIC_LIB@)
SET(EMBREE_TUTORIALS @EMBREE_TUTORIALS@)

SET(EMBREE_RAY_MASK @EMBREE_RAY_MASK@)
SET(EMBREE_STAT_COUNTERS @EMBREE_STAT_COUNTERS@)
SET(EMBREE_BACKFACE_CULLING @EMBREE_BACKFACE_CULLING@)
SET(EMBREE_FILTER_FUNCTION @EMBREE_FILTER_FUNCTION@)
SET(EMBREE_IGNORE_INVALID_RAYS @EMBREE_IGNORE_INVALID_RAYS@)
SET(EMBREE_TASKING_SYSTEM @EMBREE_TASKING_SYSTEM@)

SET(EMBREE_GEOMETRY_TRIANGLE @EMBREE_GEOMETRY_TRIANGLE@)
SET(EMBREE_GEOMETRY_QUAD @EMBREE_GEOMETRY_QUAD@)
SET(EMBREE_GEOMETRY_CURVE @EMBREE_GEOMETRY_CURVE@)
SET(EMBREE_GEOMETRY_SUBDIVISION @EMBREE_GEOMETRY_SUBDIVISION@)
SET(EMBREE_GEOMETRY_USER @EMBREE_GEOMETRY_USER@)
SET(EMBREE_RAY_PACKETS @EMBREE_RAY_PACKETS@)

IF(EMBREE_STATIC_LIB)
  INCLUDE(${EMBREE_ROOT_DIR}/@EMBREE_CMAKECONFIG_DIR@/embree-targets.cmake)
  LINK_DIRECTORIES(${EMBREE_ROOT_DIR}/@CMAKE_INSTALL_LIBDIR@)
ENDIF()