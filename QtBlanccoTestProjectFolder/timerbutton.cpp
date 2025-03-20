#include "timerbutton.h"
#include <QPainter>
#include <QDebug>
#include <QTimer>

TimerButton::TimerButton(QQuickPaintedItem *parent)
    : QQuickPaintedItem(parent), m_text("Click to Start Timer"), m_timerRunning(false)
{
    setAcceptedMouseButtons(Qt::LeftButton);

    // Create a QTimer and connect the timeout signal
    m_timer = new QTimer(this);
    connect(m_timer, &QTimer::timeout, this, &TimerButton::onTick);
}

QString TimerButton::text() const {
    return m_text;
}

void TimerButton::setText(const QString &text) {
    if (m_text != text) {
        m_text = text;
        emit textChanged();
        update();
    }
}

QString TimerButton::currentTime() const {
    return m_currentTime;
}

void TimerButton::mousePressEvent(QMouseEvent *event) {
    emit clicked();

    if (m_timerRunning) {
        stopTimer();
    } else {
        startTimer();
    }

    QQuickPaintedItem::mousePressEvent(event);
}

void TimerButton::paint(QPainter *painter) {
    QRectF buttonRect(0, 0, width(), height());
    painter->setBrush(QBrush(Qt::lightGray));
    painter->drawRect(buttonRect);
    painter->setPen(QPen(Qt::black));
    painter->drawText(buttonRect, Qt::AlignCenter, m_text);
}

// This method is called every time the timer's tick signal is emitted
void TimerButton::onTick() {
    qDebug() << "Elapsed Time:" << QString::number(m_elapsedTime);

    m_elapsedTime++;
    m_currentTime = QString::number(m_elapsedTime);  // Update the timer text
    emit currentTimeChanged();
    update();
}

void TimerButton::startTimer() {
    m_timerRunning = true;
    m_timer->start(1000);
    setText("Stop");
}

void TimerButton::stopTimer() {
    m_timerRunning = false;
    m_timer->stop();
    setText("Start");
}
