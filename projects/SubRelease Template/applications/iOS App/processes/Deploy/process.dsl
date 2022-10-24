
process 'Deploy', {
  applicationName = 'iOS App'
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'
  projectName = 'SubRelease Template'
  timeLimitUnits = 'minutes'

  formalParameter 'ec_NoArt-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_NoArt-version', defaultValue: '$[/projects/SubRelease Template/applications/iOS App/components/NoArt/ec_content_details/version]', {
    expansionDeferred = '1'
    required = '0'
    type = 'entry'
  }

  formalParameter 'ec_enforceDependencies', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_smartDeployOption', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_stageArtifacts', defaultValue: '0', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  processStep 'Deploy iOS App Component', {
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'SubRelease Template'
    subcomponent = 'NoArt'
    subcomponentApplicationName = 'iOS App'
    subcomponentProcess = 'Hello Apple'
    useUtilityResource = '0'
    workspaceName = 'tmp'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
