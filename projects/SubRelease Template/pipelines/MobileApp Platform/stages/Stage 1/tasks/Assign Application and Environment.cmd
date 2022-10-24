ectool createDeployerApplication \
"$[/myPipeline/releaseProjectName]" \
"$[/myPipelineRuntime/Platform] App" \
--releaseName "$[/myPipeline/releaseName]" \
--applicationProjectName "SubRelease Template"

ectool createDeployerConfiguration  \
--projectName "$[/myPipeline/releaseProjectName]" \
--releaseName "$[/myPipeline/releaseName]" \
--stageName "Stage 1" \
--applicationName "$[/myPipelineRuntime/Platform] App" \
--applicationProjectName "SubRelease Template" \
--processName "Deploy" \
--environmentName "$[/myPipelineRuntime/Region]" \
--environmentProjectName "SubRelease Template"