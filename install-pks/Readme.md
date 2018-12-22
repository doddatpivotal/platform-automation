# Update Commnad

```bash
fly -t lab set-pipeline -p install-pks -c install-pks/pipeline.yaml -l s3-params.yaml  -l local-vars.yaml -l install-pks/versions.yaml -n

fly -t lab unpause-pipeline -p install-pks
```