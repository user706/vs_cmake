include_guard()

function(scan_defs)
  set(exe "")
  set(src "")
  include(defs.cmake)
  add_executable(${exe} "")
  target_sources(${exe} PRIVATE ${src})
endfunction()