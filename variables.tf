variable "cluster_name" {
  description = "The name of the cluster, unique within the project and zone."
}

variable "initial_node_count" {
  description = "(Optional) The number of nodes to create in this cluster (not including the Kubernetes master). Must be set if node_pool is not set."
  default     = 1
}

variable "zone" {
  description = "(Optional) The zone that the master and the number of nodes specified in initial_node_count should be created in. Only one of zone and region may be set. If neither zone nor region are set, the provider zone is used."
  default     = "us-central1-a"
}

variable "additional_zones" {
  description = "(Optional) The list of additional Google Compute Engine locations in which the cluster's nodes should be located. If additional zones are configured, the number of nodes specified in initial_node_count is created in all specified zones."
  default     = ["us-central1-b", "us-central1-c"]
}

variable "resource_labels" {
  description = "(Optional) The GCE resource labels (a map of key/value pairs) to be applied to the cluster."

  default = {
    noetl-dev = "operator"
  }
}

variable "tags" {
  description = " (Optional) The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls."
  default     = ["noetl", "operator"]
}
