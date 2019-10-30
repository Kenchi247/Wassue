 App.cable.subscriptions.create "NotificationChannel",
  received: (data) ->
    new Notification data["title"], body: data["body"]
