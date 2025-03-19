#include "networkmanager.h"

#include <QFile>
#include <QJsonDocument>
#include <QJsonObject>
#include <QTemporaryFile>
#include <QNetworkReply>
#include <QNetworkAccessManager>

// #include <QDebug>

NetworkManager::NetworkManager(QObject *parent) : QObject(parent)
{
    manager = new QNetworkAccessManager(this);
    connect(manager, &QNetworkAccessManager::finished, this, &NetworkManager::onReplyFinished);
}

void NetworkManager::SendPostRequest(const QString &url, const QString &fileName)
{
    QNetworkRequest request;
    request.setUrl(QUrl(url));
    request.setHeader(QNetworkRequest::ContentTypeHeader, "application/json");

    // Create a JSON object
    QJsonObject jsonObject;
    jsonObject["filename"] = fileName;

    // Convert the JSON object to QByteArray
    QJsonDocument jsonDoc(jsonObject);
    QByteArray jsonData = jsonDoc.toJson();

    manager->post(request, jsonData);
}

void NetworkManager::onReplyFinished(QNetworkReply *reply)
{
    if (!reply) return;

    if (reply->error() == QNetworkReply::NoError) {
        QByteArray data = reply->readAll();

        // Create a temporary file to get the data.
        QTemporaryFile tempFile;
        if (tempFile.open()) {
            tempFile.write(data);
            tempFile.close();

            // Create a QUrl from the temporary file
            QUrl fileUrl = QUrl::fromLocalFile(tempFile.fileName());

            // Send the signal
            emit postRequestFinished(fileUrl);
        }
    }
    reply->deleteLater();
}
