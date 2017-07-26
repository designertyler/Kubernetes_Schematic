provider "ibm" {
 bluemix_api_key = "${var.bxapikey}"
}

resource "ibm_container_cluster" "foobernetes" {
    name = "foobernetes"
    datacenter = "dal10"
    machine_type = "free"
    isolation = "public"
   public_vlan_id  = "vlan"
  private_vlan_id = "vlan"
  subnet_id       = ["1154643"]

  workers = [{
    name = "worker1"

    action = "add"
  }]

  webhook = [{
    level = "Normal"

    type = "slack"

    url = "https://hooks.slack.com/services/yt7rebjhgh2r4rd44fjk"
  }]

  org_guid     = "${var.org_guid}"
  space_guid   = "${var.space_guid}"
  account_guid = "${var.account_guid}"
}
