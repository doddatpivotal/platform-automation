# Test pipeline for Platform Automation for PCF

Pulled from https://docs.pivotal.io/pcf-automation/release/#what-is-platform-automation-for-pcf

```bash
export CI_TARGET=<target>
fly -t $CI_TARGET set-pipeline -p platform-automation-test -c smoke-test/pipeline.yaml -l s3-params.yaml
```