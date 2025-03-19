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

    void SendPostRequest(const QString &url, const QString &fileName);

signals:
    void postRequestFinished(const QUrl &url);

private slots:
    void onReplyFinished(QNetworkReply* reply);

private:
    QNetworkAccessManager *manager;
};

#endif // NETWORKMANAGER_H
