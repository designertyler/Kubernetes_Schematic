data "ibmcloud_cs_cluster" "Testcluster" {
    cluster_name_id = "${var.cluster_name_id}"
    org_guid = "${var.org_guid}"
    space_guid = "${var.space_guid}"
    account_guid = "${var.account_guid}"
}
