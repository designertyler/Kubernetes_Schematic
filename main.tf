provider "ibm" {
  bluemix_api_key = "${var.bxapikey}"
}

resource "ibmcloud_cs_cluster" "foobernetes" {
    name = "foobernetes"
    datacenter = "dal10"
    machine_type = "free"
    isolation = "public"
    workers = [{name="worker1",  action="add"},]
    org_guid = "${var.org_guid}"
    space_guid = "${var.space_guid}"
    account_guid = "${var.account_guid}"
}
