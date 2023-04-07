resource "google_bigquery_dataset" "ds_tf" {
  dataset_id = "ds_cust"
}

resource "google_bigquery_table" "table_-tf" {
  table_id   = "table-cust"
  dataset_id = google_bigquery_dataset.ds_tf.dataset_id
  deletion_protection = "false"
  schema = <<EOF
[
  {
    "name": "Customer_id",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "This is customer id"
  },
  {
    "name": "Country",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "Country of residence of customer"
  },
  {
    "name": "Address",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "Address of residence of customer"
  }
]
EOF

}

resource "google_bigquery_table" "table_supply" {
  table_id   = "table-supply"
  dataset_id = google_bigquery_dataset.ds_tf.dataset_id
  deletion_protection = "false"
  schema = <<EOF
[
  {
    "name": "Customer_id",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "This is customer id"
  },
  {
    "name": "Country",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "Country of residence of customer"
  },
  {
    "name": "Address",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "Address of residence of customer"
  }
]
EOF

}