import java.io.File


process 'Hello Apple', {
  processType = 'DEPLOY'
  projectName = 'SubRelease Template'
  timeLimitUnits = 'minutes'

  processStep 'Echo', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/iOS App/applicationTiers/Tier 1/components/NoArt/processes/Hello Apple/processSteps/Echo.cmd").text,
    ]
    alwaysRun = '0'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'command'
    projectName = 'SubRelease Template'
    subprocedure = 'RunCommand'
    subproject = '/plugins/EC-Core/project'
    useUtilityResource = '0'
  }
}
