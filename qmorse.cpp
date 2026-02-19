#include "qmorse.h"

QMorse::QMorse(QObject *parent) : QObject(parent)
{
    m_e2m = {
        {'A',".-"}, {'B',"-..."}, {'C',"-.-."},
        {'D',"-.."}, {'E',"."}, {'F',"..-."},
        {'G',"--."}, {'H',"...."}, {'I',".."},
        {'J',".---"},{'K',"-.-"},{'L',".-.."},
        {'M',"--"},{'N',"-."},{'O',"---"},
        {'P',".--."},{'Q',"--.-"},{'R',".-."},
        {'S',"..."},{'T',"-"},{'U',"..-"},
        {'V',"...-"},{'W',".--"},{'X',"-..-"},
        {'Y',"-.--"},{'Z',"--.."},
        {'1',".----"},{'2',"..---"},{'3',"...--"},
        {'4',"....-"},{'5',"....."},{'6',"-...."},
        {'7',"--..."},{'8',"---.."},{'9',"----."},
        {'0',"-----"},{' ',"/"}
    };

    for (auto it = m_e2m.begin(); it != m_e2m.end(); ++it) {
        m_m2e[it.value()] = it.key();
    }
}

QString QMorse::englishToMorse(const QString &text)
{
    QString out;
    for (auto ch : text.toUpper()) {
        if (m_e2m.contains(ch)) {
            out += m_e2m[ch] + " ";
        }
    }
    return out.trimmed();
}

QString QMorse::morseToEnglish(const QString &morse)
{
    QString out;
    auto words = morse.split(" / ");
    for (auto &w : words) {
        for (auto &sym : w.split(" ")) {
            if (m_m2e.contains(sym))
                out += m_m2e[sym];
        }
        out += " ";
    }
    return out.trimmed();
}
