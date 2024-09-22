module "excalidraw" {
  source        = "./modules/docker"
  name          = "excalidraw"
  image         = "excalidraw/excalidraw:latest"
  internal_port = 80
  external_port = 5000
}

module "kafka" {
  source        = "./modules/docker"
  name          = "kafka"
  image         = "apache/kafka-native:3.8.0"
  internal_port = 9092
  external_port = 9092
}

module "clickhose" {
  source        = "./modules/docker"
  name          = "clickhose"
  image         = "clickhouse/clickhouse-server"
  internal_port = 8123
  external_port = 8123
}

module "mysql" {
  source        = "./modules/docker"
  name          = "mysql"
  image         = "mysql"
  internal_port = 3306
  external_port = 3306
  env           = ["MYSQL_ROOT_PASSWORD=root"]
}

module "postgres" {
  source        = "./modules/docker"
  name          = "postgres"
  image         = "postgres"
  internal_port = 5432
  external_port = 5432
  env           = ["POSTGRES_PASSWORD=postgres"]
}

module "redis" {
  source        = "./modules/docker"
  name          = "redis"
  image         = "redis"
  internal_port = 6379
  external_port = 6379
}
