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
          0.0.2

    GLOBAL OPTIONS
          --help    - Show this message
          --version - Display the program version

    COMMANDS
          about - Gets the average response time for the GitLab about page
          help  - Shows a list of commands or help for one command
          home  - Gets the average response time for the GitLab home page
      """

  Scenario: Querying response time for about
    When I get about for "gl-stat"
    Then the output should contain:
      """
      Response time for https://about.gitlab.com
      """

  Scenario: Querying response time for about
    When I get home for "gl-stat"
    Then the output should contain:
      """
      Response time for https://gitlab.com
      """
  
