#ifndef CPPWORKER_H
#define CPPWORKER_H

#include <QObject>

class CppWorker final : public QObject
{
    Q_OBJECT
public:
    explicit CppWorker(QObject *parent = nullptr);

    // Q_INVOKABLE
    Q_INVOKABLE static void regularMethod();
    Q_INVOKABLE static QString regularMethodWithReturn(QString name, int age);

public slots:
    static void cppSlot();
};

#endif // CPPWORKER_H
