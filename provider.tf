provider "ibmcloud" {
  bluemix_api_key = "${var.bxapikey}"
  softlayer_username  = "${var.sl_username}"
  softlayer_api_key = "${var.sl_api_key}"
}
