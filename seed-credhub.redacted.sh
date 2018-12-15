export CREDHUB_PASSWORD=$(bosh int generated/concourse/concourse-gen-vars.yml --path /uaa_users_admin)
credhub login -u admin -p "$CREDHUB_PASSWORD"

credhub set -t value -n '/concourse/main/s3_access_key_id' -v 'REDACTED_ACCESS_KEY_D'
credhub set -t value -n '/concourse/main/s3_secret_access_key' -v 'REDACTED_SECRET_ACCESS_KEY'
credhub set -t value -n '/concourse/main/pivnet_token' -v 'REDACED_PIVNET_TOKEN'
credhub set -t rsa -n '/concourse/main/configuration_git_repo' -p configuration_private_key.cert
credhub set -t certificate -n '/concourse/main/credhub_ca_cert' -c <(bosh int ../homelab-concourse-setup/generated/concourse/concourse-gen-vars.yml --path /atc_tls/ca)
credhub set -t value -n '/concourse/main/credhub_secret' -v $(bosh int ../homelab-concourse-setup/generated/concourse/concourse-gen-vars.yml --path /uaa_users_admin)
credhub set -t value -n '/concourse/main/concourse_to_credhub_secret' -v $(bosh int ../homelab-concourse-setup/generated/concourse/concourse-gen-vars.yml --path /concourse_to_credhub_secret)

credhub set -t value -n '/lab-foundation/vsphere_ssh_public_key' -v 'REDACTED_RSA_PUB_KEY'
credhub set -t value -n '/lab-foundation/vsphere_vcenter_password' -v 'REDACTED_VCENTER_PW'
credhub set -t value -n '/lab-foundation/properties_credhub_key_encryption_passwords_0_key_secret' -v 'REDACTED_ENCRYPTION_KEY'
 
