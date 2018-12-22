# Update Commnad

```bash
fly -t lab set-pipeline -p manage-pks -c manage-pks/pipeline.yaml -n -l manage-pks/local-vars.yaml

fly -t lab unpause-pipeline -p manage-pks
```