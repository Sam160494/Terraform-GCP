resource "google_sql_database_instance" "mysql-tf" {
    name = "mysql-tf"
    region = "us-central1"
    database_version = "POSTGRES_14"

    settings {
        tier = "db-f1-micro"
    }
  
}


resource "google_sql_user" "myuser" {
    name ="samra"
    password ="samra@123"
    instance = google_sql_database_instance.mysql-tf.name
  
}