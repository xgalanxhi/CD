# DEBUG
echo "$[/myPipelineRuntime/Regions]"

# Parameters: 
projectName="SubRelease Template"
releaseName="$[/myPipeline/releaseName]"
stage="Stage 1"
IFS=$'\n'

# Iterate overt list of Regions
for region in $(echo "$[/myPipelineRuntime/Regions]")
do
    subreleaseName="${releaseName}_-${region}"

    # Create and Assign SubReleases
    ectool getRelease "$projectName" "${subreleaseName}" || \
    ectool createRelease "$projectName" "${subreleaseName}" --pipelineName "MobileApp Region"

    ectool getSubrelease "$projectName" "$releaseName" "$subreleaseName" || \
    ectool addSubrelease  "$projectName"  "${releaseName}" "${subreleaseName}" 

    # Add Task to Current Release 
    ectool getTask "$projectName" "Release ${region}" \
        --releaseName "${releaseName}" \
        --stageName "${stage}" || \
    ectool createTask "$projectName" \
        "Release ${region}" \
        --stageName "${stage}" \
        --releaseName "${releaseName}" \
        --taskType "RELEASE" \
        --subrelease "${subreleaseName}" \
        --subreleasePipelineProject "$projectName" \
        --actualParameter "Platform=$[/myPipelineRuntime/Platform]" "Region=${region}" 
done
