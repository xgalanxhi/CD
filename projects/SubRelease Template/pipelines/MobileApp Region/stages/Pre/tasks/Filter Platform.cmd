# DEBUG
echo "$[/myPipelineRuntime/Platform]"

# Parameters: 
projectName="SubRelease Template"
releaseName="$[/myPipeline/releaseName]"
stage="Stage 1"
IFS=$'\n'

# Iterate overt list of Regions
for platform in $(echo "$[/myPipelineRuntime/Platform]")
do
    subreleaseName="${releaseName}_-${platform}"

    # Create and Assign SubReleases
    ectool getRelease "$projectName" "${subreleaseName}" || \
    ectool createRelease "$projectName" "${subreleaseName}" --pipelineName "MobileApp Platform"

    ectool getSubrelease "$projectName" "$releaseName" "$subreleaseName" || \
    ectool addSubrelease  "$projectName"  "${releaseName}" "${subreleaseName}" 

    # Add Task to Current Release 
    ectool getTask "$projectName" "Release ${platform}" \
        --releaseName "${releaseName}" \
        --stageName "${stage}" || \
    ectool createTask "$projectName" \
        "Release ${platform}" \
        --stageName "${stage}" \
        --releaseName "${releaseName}" \
        --taskType "RELEASE" \
        --subrelease "${subreleaseName}" \
        --subreleasePipelineProject "$projectName" \
        --actualParameter "Platform=${platform}" "Region=$[/myPipelineRuntime/Region]" 
done
