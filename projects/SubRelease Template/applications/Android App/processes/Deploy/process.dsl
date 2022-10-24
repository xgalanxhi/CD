
process 'Deploy', {
  applicationName = 'Android App'
  exclusiveEnvironment = '0'
  processType = 'DEPLOY'
  projectName = 'SubRelease Template'
  timeLimitUnits = 'minutes'
  workspaceName = 'tmp'

  formalParameter 'ec_NoArt-run', defaultValue: '1', {
    expansionDeferred = '1'
    required = '0'
    type = 'checkbox'
  }

  formalParameter 'ec_NoArt-version', defaultValue: '$[/projects/SubRelease Template/applications/Android App/components/NoArt/ec_content_details/version]', {
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

  processStep 'Deploy Android Component', {
    alwaysRun = '0'
    applicationTierName = 'Tier 1'
    dependencyJoinType = 'and'
    errorHandling = 'abortJob'
    processStepType = 'process'
    projectName = 'SubRelease Template'
    subcomponent = 'NoArt'
    subcomponentApplicationName = 'Android App'
    subcomponentProcess = 'Hello Android'
    useUtilityResource = '0'

    // Custom properties

    property 'ec_deploy', {

      // Custom properties
      ec_notifierStatus = '0'
    }
  }
}
