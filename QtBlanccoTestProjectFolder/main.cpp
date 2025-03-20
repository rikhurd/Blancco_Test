#include <QGuiApplication>
#include <QQuickView>
#include <networkmanager.h>
#include <timerbutton.h>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    qmlRegisterType<TimerButton>("TimerButtonInclude", 1, 0, "TimerButton");

    QQuickView* view = new QQuickView();

    QObject::connect(view, &QQuickView::statusChanged, [view](QQuickView::Status status) {
        if (status == QQuickView::Error) {
            qDebug() << "Error loading QML";
            // Print additional debug information
            qDebug() << "Error message: " << view->status();
        }
    });

    NetworkManager* networkManager = new NetworkManager;

    QObject::connect(networkManager, &NetworkManager::postRequestFinished,
                     [=](const QUrl &url) {
                         if (url.isValid()) {
                            view->setSource(url);
                             // Debug URL differs from one got in server, because we do a temporary file of it.
                            qDebug() << "URL received: " << url.toString();
                         } else {
                             qDebug() << "Invalid URL received: " << url.toString();
                         }
                     });

    networkManager->SendPostRequest("http://localhost:8000/api/v1/getQML", "Main.qml");

    view->show();

    return app.exec();
}
