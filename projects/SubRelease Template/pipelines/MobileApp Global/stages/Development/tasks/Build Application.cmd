echo "Build Completed Successfully"

ectool createDeployerApplication \
"$[/myPipeline/releaseProjectName]" \
"Android App" \
--releaseName "$[/myPipeline/releaseName]" \
--applicationProjectName "SubRelease Template"

ectool createDeployerConfiguration  \
--projectName "$[/myPipeline/releaseProjectName]" \
--releaseName "$[/myPipeline/releaseName]" \
--stageName "Development" \
--applicationName "Android App" \
--applicationProjectName "SubRelease Template" \
--processName "Deploy" \
--environmentName "$[/myPipelineRuntime/Dev Environment]" \
--environmentProjectName "SubRelease Template"