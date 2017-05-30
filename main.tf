data "ibmcloud_cs_cluster" "cluster_foo" {
    cluster_name_id = "FOO"
    org_guid = "${var.org_guid}"
    space_guid = "${var.space_guid}"
    account_guid = "${var.account_guid}"
}
