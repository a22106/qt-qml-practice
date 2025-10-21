#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "cppworker.h"

int main(int argc, char *argv[])
{
    const QGuiApplication app(argc, argv); // app instance 생성

    QQmlApplicationEngine engine; // engine (qml 실행)

    // CppWorker를 QML에 등록
    CppWorker worker;
    engine.rootContext()->setContextProperty("BWorker", &worker);

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.addImportPath(":/"); // Remember to add this QML import path
    engine.loadFromModule("QtPractice", "Main");

    return QGuiApplication::exec();
}
