Feature: Runnig the app

  Scenario: App just runs
    When I get help for "gl-stat"
    Then the exit status should be 0

  Scenario: Help menu
    When I get help for "gl-stat"
    Then the output should contain:
      """
    NAME
          gl-stat - Get average response times for GitLab pages

    SYNOPSIS
          gl-stat [global options] command [command options] [arguments...]

    VERSION
          0.0.1
      """

  Scenario: App just runs
    When I get about for "gl-stat"
    Then the exit status should be 0

  
