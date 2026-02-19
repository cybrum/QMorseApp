# QMorseApp

A Qt 6 (QML + C++) desktop application that converts English text to Morse code and Morse code back to English.

Built using:
- Qt 6.10+
- Qt Quick (QML)
- CMake
- MinGW / MSVC compatible

---

## ✨ Features

- English → Morse conversion
- Morse → English conversion
- Swap mode toggle
- Copy output to clipboard
- Clean QML user interface
- C++ backend conversion logic (QMorse class)

---

## 📁 Project Structure

QMorseApp/
│── CMakeLists.txt
│── main.cpp
│── qmorse.cpp
│── qmorse.h
│── main.qml
│── README.md


---

## 🛠 Requirements

- Qt 6.5 or newer (tested on 6.10.1)
- CMake 3.16+
- MinGW 64-bit or MSVC

---

## 🙏 Acknowledgements

This application is built with the powerful and flexible [Qt Framework](https://www.qt.io/).
Qt enables cross-platform native application development using C++ and QML.
Thanks to The Qt Company and the Qt open-source community for maintaining and evolving the framework.

---

## 🚀 Build Instructions (Qt Creator)

1. Open `CMakeLists.txt` in Qt Creator
2. Select Kit (e.g. Desktop Qt 6.10.1 MinGW 64-bit)
3. Configure Project
4. Click Build
5. Run

---

## 🚀 Build Instructions (Command Line)

From project root:
cmake -S . -B build -DCMAKE_PREFIX_PATH="C:/Qt/6.10.1/mingw_64"
cmake --build build
