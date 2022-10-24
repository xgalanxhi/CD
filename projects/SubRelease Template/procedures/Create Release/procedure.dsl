
procedure 'Create Release', {
  description = ''
  jobNameTemplate = ''
  projectName = 'SubRelease Template'
  resourceName = ''
  timeLimit = '0'
  timeLimitUnits = 'minutes'
  workspaceName = ''

  formalParameter 'Regions', defaultValue: '', {
    expansionDeferred = '0'
    multiSelect = '1'
    orderIndex = '1'
    required = '1'
    simpleList = 'Europe|America|Asia'
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

  formalParameter 'Dev Environment', defaultValue: 'Mobile Development', {
    expansionDeferred = '0'
    orderIndex = '3'
    required = '1'
    simpleList = 'Mobile Development'
    type = 'radio'
  }
}
