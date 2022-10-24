import java.io.File


task 'Assign Application and Environment', {
  description = ''
  actualParameter = [
    'commandToRun': new File(projectDir, "./pipelines/MobileApp Platform/stages/Stage 1/tasks/Assign Application and Environment.cmd").text,
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