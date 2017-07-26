provider "ibm" {
 bluemix_api_key = "${var.bxapikey}"
}

resource "ibm_container_cluster" "foobernetes" {
    name = "foobernetes"
    datacenter = "dal10"
    machine_type = "free"
    isolation = "public"
}
