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

    QObject::connect(networkManager, &NetworkManager::postRequestFinished,[=](const QUrl &url) {
        if (url.isValid()) {view->setSource(url);
            // Debug URL differs from one got in server, because we do a temporary file of it.
            qDebug() << "URL received: " << url.toString();

            /*
             *  We call view after the URL is confirmed to be received. Not optimal but circumvents window starting without getting a file from the server.
             *  Done so we can't launch the app without a server, but to be optimal and readable should be made into a debug line for the user.
             */
            view->show();
        } else {
            qDebug() << "Invalid URL received: " << url.toString();
        }
    });

    networkManager->SendPostRequest("http://localhost:8000/api/v1/getQML", "Main.qml");

    return app.exec();
}
