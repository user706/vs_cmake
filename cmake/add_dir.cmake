include_guard()

function(add_dir src_dir)
  get_property(currlist GLOBAL PROPERTY addSubdirProp)

  get_filename_component(srcDirAbs "${src_dir}" ABSOLUTE)

  string(REGEX REPLACE "^${CMAKE_SOURCE_DIR}" "" dirPrefix "${srcDirAbs}")
  set(binDirAbs "${CMAKE_BINARY_DIR}${dirPrefix}")

  if (NOT "${srcDirAbs}|${binDirAbs}" IN_LIST currlist)
    set_property(GLOBAL APPEND PROPERTY addSubdirProp "${srcDirAbs}|${binDirAbs}")
    add_subdirectory("${srcDirAbs}" "${binDirAbs}")
  endif()
endfunction()
