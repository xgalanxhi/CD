import java.io.File


task 'Filter Environments', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/MobileApp Global/stages/Development/tasks/Filter Environments.cmd").text,
  ]
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  enabled = '1'
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
