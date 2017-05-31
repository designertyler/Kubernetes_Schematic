resource "ibmcloud_cs_cluster" "foobernetes2" {
    name = "foobernetes2"
    datacenter = "dal10"
    machine_type = "free"
    isolation = "public"
    workers = [{name="worker1",  action="add"},]
    org_guid = "${var.org_guid}"
    space_guid = "${var.space_guid}"
    account_guid = "${var.account_guid}"
}
