[![Build Status](https://travis-ci.org/nicsnet/gl-stat.svg?branch=master)](https://travis-ci.org/nicsnet/gl-stat)


## Usage

### Get average response times for GitLab home and about pages

Build the gem

``` gem build gl-stat.gemspec```

Running the tests:

``` 
    bundle install 
    bundle exec rspec
    bundle exec cucumber 
```

Get average response times for https://gitlab.com

``` bundle exec bin/gl-stat home ```

Get average response times for https://about.gitlab.com


``` bundle exec bin/gl-stat about ```

Help menu:

``` bundle exec bin/gl-stat ```
    
``` 
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
          home  - Gets the average response time for the GitLab home page```
