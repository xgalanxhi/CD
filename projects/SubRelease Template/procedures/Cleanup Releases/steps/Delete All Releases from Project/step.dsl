import java.io.File


step 'Delete All Releases from Project', {
  description = ''
  alwaysRun = '0'
  broadcast = '0'
  command = new File(projectDir, "./procedures/Cleanup Releases/steps/Delete All Releases from Project.cmd").text
  condition = ''
  errorHandling = 'failProcedure'
  exclusiveMode = 'none'
  logFileName = ''
  parallel = '0'
  postProcessor = ''
  precondition = ''
  projectName = 'SubRelease Template'
  releaseMode = 'none'
  resourceName = ''
  shell = ''
  timeLimit = '0'
  timeLimitUnits = 'seconds'
  workingDirectory = ''
  workspaceName = 'tmp'
}
