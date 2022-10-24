
pipeline 'MobileApp Global', {
  disableMultipleActiveRuns = '0'
  disableRestart = '0'
  enabled = '1'
  overrideWorkspace = '0'
  projectName = 'SubRelease Template'
  skipStageMode = 'ENABLED'

  formalParameter 'Regions', defaultValue: '', {
    expansionDeferred = '0'
    multiSelect = '1'
    orderIndex = '1'
    required = '1'
    simpleList = 'America|Asia|Europe'
    type = 'select'
  }

  formalParameter 'Platform', defaultValue: '', {
    expansionDeferred = '0'
    multiSelect = '1'
    orderIndex = '2'
    required = '1'
    simpleList = 'iOS|Android'
    type = 'select'
  }

  formalParameter 'Dev Environment', defaultValue: '', {
    expansionDeferred = '0'
    orderIndex = '3'
    required = '1'
    simpleList = 'Mobile Development'
    type = 'radio'
  }

  formalParameter 'ec_stagesToRun', {
    expansionDeferred = '1'
    required = '0'
  }
}
