# Update Commnad

```bash
fly -t lab set-pipeline -p install-harbor -c install-harbor/pipeline.yaml -l s3-params.yaml -l pivnet.yaml -l local-vars.yaml -l install-harbor/versions.yaml

fly -t lab unpause-pipeline -p install-harbor
```