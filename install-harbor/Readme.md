# Update Commnad

```bash
fly -t lab set-pipeline -p install-harbor -c install-harbor/pipeline.yaml -l s3-params.yaml -l local-vars.yaml -l install-harbor/versions.yaml -n

fly -t lab unpause-pipeline -p install-harbor
```