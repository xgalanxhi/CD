import java.io.File


process 'Hello Android', {
  processType = 'DEPLOY'
  projectName = 'SubRelease Template'
  timeLimitUnits = 'minutes'

  processStep 'echo', {
    actualParameter = [
      'commandToRun': new File(projectDir, "./applications/Android App/applicationTiers/Tier 1/components/NoArt/processes/Hello Android/processSteps/echo.cmd").text,
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
