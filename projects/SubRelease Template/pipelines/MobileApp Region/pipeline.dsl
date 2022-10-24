
pipeline 'MobileApp Region', {
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'SubRelease Template'
  skipStageMode = 'ENABLED'

  formalParameter 'Platform', defaultValue: '', {
    expansionDeferred = '0'
    orderIndex = '1'
    required = '1'
    type = 'entry'
  }

  formalParameter 'Region', defaultValue: '', {
    expansionDeferred = '0'
    orderIndex = '2'
    required = '1'
    simpleList = 'Europe|America|Asia'
    type = 'radio'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }
}
