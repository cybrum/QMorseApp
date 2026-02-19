cmake_minimum_required(VERSION 3.16)

project(QMorseApp LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(appQMorseApp
    main.cpp
    qmorse.cpp
    qmorse.h
)

qt_add_resources(appQMorseApp "qml"
    PREFIX "/"
    FILES
        main.qml
)

target_link_libraries(appQMorseApp PRIVATE Qt6::Quick)
