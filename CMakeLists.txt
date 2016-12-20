cmake_minimum_required(VERSION 3.6)
project(Snake)

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -Werror")
INCLUDE(FindPkgConfig)

PKG_SEARCH_MODULE(SDL2 REQUIRED sdl2)
PKG_SEARCH_MODULE(SDL2_GFX REQUIRED sdl2_gfx)

INCLUDE_DIRECTORIES(${SDL2_INCLUDE_DIRS})
set(SOURCE_FILES main.c lib/snake.h lib/game.h lib/food.h lib/formulas.h)
add_executable(Snake ${SOURCE_FILES})
target_link_libraries(Snake ${SDL2_LIBRARIES} ${SDL2_GFX_LIBRARIES})
