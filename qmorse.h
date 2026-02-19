#ifndef QMORSE_H
#define QMORSE_H

#include <QObject>
#include <QMap>

class QMorse : public QObject
{
    Q_OBJECT
public:
    explicit QMorse(QObject *parent = nullptr);

    Q_INVOKABLE QString englishToMorse(const QString &text);
    Q_INVOKABLE QString morseToEnglish(const QString &morse);

private:
    QMap<QChar, QString> m_e2m;
    QMap<QString, QChar> m_m2e;
};

#endif // QMORSE_H
