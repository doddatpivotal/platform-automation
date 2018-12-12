# Update Commnad

```bash
fly -t lab set-pipeline -p retrieve-external-dependencies -c retrieve-external-dependencies/pipeline.yaml -l s3-params.yaml -l pivnet.yaml -l retrieve-external-dependencies/versions.yaml

fly -t lab unpause-pipeline -p retrieve-external-dependencies
```