module "bigquery" {
  source  = "terraform-google-modules/bigquery/google"
  version = "~> 4.1"

  dataset_id                  = "dpc_covid19_italy"
  dataset_name                = "DPC COVID19 Italy"
  description                 = "Dipartimento Protezione Civile COVID19 dataset"
  project_id                  = "${var.PROJECT_ID}"
  location                    = "EU"
  default_table_expiration_ms = 3600000
  tables = [
    {
      table_id          = "DatiRegioni"
      schema            = "DatiRegioni_schema.json"
      time_partitioning = null
      expiration_time   = null
      clustering        = null
      labels = {
        env      = "dev"
        billable = "true"
        owner    = "denis"
      }
    }
  ]
  dataset_labels = {
    env      = "dev"
    billable = "true"
    corso = "true"
  }
}
