
task 'Deploy App', {
  advancedMode = '0'
  allowOutOfOrderRun = '0'
  alwaysRun = '0'
  deployerRunType = 'serial'
  enabled = '1'
  errorHandling = 'stopOnError'
  insertRollingDeployManualStep = '0'
  projectName = 'SubRelease Template'
  skippable = '0'
  subproject = 'SubRelease Template'
  taskType = 'DEPLOYER'
  useApproverAcl = '0'
  waitForPlannedStartDate = '0'
}
