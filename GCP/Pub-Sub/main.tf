resource "google_pubsub_topic" "topic_tf" {
  name = "topic_tf"

  /*labels = {
    foo = "bar"
  }

  message_retention_duration = "86600s"*/
}

resource "google_pubsub_subscription" "sub-tf" {
  name = "sub-tf"
  topic = google_pubsub_topic.topic_tf.name
}