#ifndef NETWORKMANAGER_H
#define NETWORKMANAGER_H

#include <QObject>

// Class forwarding
class QNetworkAccessManager;
class QNetworkReply;

class NetworkManager : public QObject
{
    Q_OBJECT
public:
    explicit NetworkManager(QObject *parent = nullptr);

    /**
     * URL = API to call this case always "http://localhost:8000/api/v1/getQML"
     *
     * fileName = File name that the server finds that will be displayed to the user. In this case always "Main.qml"
     */
    void SendPostRequest(const QString &url, const QString &fileName);

signals:
    //Signal that sets the url (qml file) in main.cpp to be displayed to the user
    void postRequestFinished(const QUrl &url);

private slots:
    // Called when post is called in SendPostRequest
    void onReplyFinished(QNetworkReply* reply);

private:
    QNetworkAccessManager *manager;
};

#endif // NETWORKMANAGER_H
