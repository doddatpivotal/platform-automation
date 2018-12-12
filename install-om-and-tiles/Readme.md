# Update Commnad

```bash
fly -t lab set-pipeline -p install-om-and-tiles -c install-om-and-tiles/pipeline.yaml -l s3-params.yaml -l local-vars.yaml

fly -t lab unpause-pipeline -p install-om-and-tiles
```