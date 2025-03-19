#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>
#include <QJsonDocument>
#include <QJsonObject>
#include <QDebug>
#include <QFile>

class QMLClient : public QObject {
    Q_OBJECT
public:
    QMLClient(QQuickView *view) : quickView(view) {
        connect(&networkManager, &QNetworkAccessManager::finished, this, &QMLClient::onReplyReceived);
    }

    void fetchQMLFile(const QString &filename) {
        QNetworkRequest request(QUrl("http://127.0.0.1:3000/api/v1/getQML"));
        request.setHeader(QNetworkRequest::ContentTypeHeader, "application/json");
        QJsonObject json{{"filename", filename}};
        networkManager.post(request, QJsonDocument(json).toJson());
    }

private slots:
    void onReplyReceived(QNetworkReply *reply) {
        if (reply->error() == QNetworkReply::NoError) {
            QJsonObject response = QJsonDocument::fromJson(reply->readAll()).object();
            if (response.contains("qml")) {
                QFile file("temp.qml");
                if (file.open(QIODevice::WriteOnly)) {
                    file.write(response["qml"].toString().toUtf8());
                    file.close();
                    quickView->setSource(QUrl::fromLocalFile("temp.qml"));
                    quickView->show();
                }
            }
        }
        reply->deleteLater();
    }

private:
    QNetworkAccessManager networkManager;
    QQuickView *quickView;
};

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // Create a QQuickView to display the QML content
    QQuickView view;

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("QtBlanccoTest", "Main");

    // Show the QQuickView window
    view.show();

    return app.exec();
}

#include "main.moc"
