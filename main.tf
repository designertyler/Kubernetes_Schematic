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

  org_guid     = "trtate_org"
  space_guid   = "Schematics"
  account_guid = "a2e167d8d70f11da608c419b3dfae718"
}
