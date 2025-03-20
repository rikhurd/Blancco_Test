#ifndef TIMERBUTTON_H
#define TIMERBUTTON_H

#include <QQuickItem>

class QMouseEvent;

class TimerButton : public QQuickItem
{
    Q_OBJECT
    Q_PROPERTY(QString text READ text WRITE setText NOTIFY textChanged)
    Q_PROPERTY(QString currentTime READ currentTime NOTIFY currentTimeChanged)

public:
    explicit TimerButton(QQuickItem *parent = nullptr);

    QString text() const;
    void setText(const QString &text);
    QString currentTime() const;

signals:
    void clicked();
    void textChanged();
    void currentTimeChanged();

protected:
    void mousePressEvent(QMouseEvent *event) override;

private:
    QString m_text;
    QString m_currentTime;  // Time displayed in QML
    QTimer *m_timer;        // Timer for periodic updates
    bool m_timerRunning;
    int m_elapsedTime = 0;

    void onTick();          // Called every time timer timeout interval is called which is 1000ms
    void startTimer();
    void stopTimer();
};

#endif // TIMERBUTTON_H
