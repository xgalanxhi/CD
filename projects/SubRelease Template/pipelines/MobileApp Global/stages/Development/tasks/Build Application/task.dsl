import java.io.File


task 'Build Application', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/MobileApp Global/stages/Development/tasks/Build Application.cmd").text,
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '0'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'SubRelease Template'
  resourceName = 'local'
  skippable = '0'
  subpluginKey = 'EC-Core'
  subprocedure = 'RunCommand'
  taskType = 'COMMAND'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
