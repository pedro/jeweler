Feature: git support
  In order to start a new gem for GitHub
  A user should be able to
  generate a project that is setup for git

  Scenario: git remote configuration
    Given a working directory
    And I have configured git sanely
    When I generate a project named 'the-perfect-gem' that is 'zomg, so good'

    Then git repository has 'origin' remote
    And git repository 'origin' remote should be 'git@github.com:technicalpickles/the-perfect-gem.git'

  Scenario: .gitignore
    Given a working directory
    And I have configured git sanely
    When I generate a project named 'the-perfect-gem' that is 'zomg, so good'

    Then a sane '.gitignore' is created

  Scenario: baseline repository
    Given a working directory
    And I have configured git sanely
    When I generate a project named 'the-perfect-gem' that is 'zomg, so good'

    Then a commit with the message 'Initial commit to the-perfect-gem.' is made
    And 'README' was checked in
    And 'Rakefile' was checked in
    And 'LICENSE' was checked in
    And 'lib/the_perfect_gem.rb' was checked in
    And '.gitignore' was checked in

    And no files are untracked
    And no files are changed
    And no files are added
    And no files are deleted

  Scenario: bacon
    Given a working directory
    And I have configured git sanely
    And I intend to test with bacon
    When I generate a project named 'the-perfect-gem' that is 'zomg, so good'

    Then 'spec/spec_helper.rb' was checked in
    And 'spec/the_perfect_gem_spec.rb' was checked in

  Scenario: minitest
    Given a working directory
    And I have configured git sanely
    And I intend to test with minitest
    When I generate a project named 'the-perfect-gem' that is 'zomg, so good'

    Then 'test/test_helper.rb' was checked in
    And 'test/the_perfect_gem_test.rb' was checked in

  Scenario: rspec
    Given a working directory
    And I have configured git sanely
    And I intend to test with rspec
    When I generate a project named 'the-perfect-gem' that is 'zomg, so good'

    Then 'spec/spec_helper.rb' was checked in
    And 'spec/the_perfect_gem_spec.rb' was checked in

  Scenario: shoulda
    Given a working directory
    And I have configured git sanely
    And I intend to test with shoulda
    When I generate a project named 'the-perfect-gem' that is 'zomg, so good'

    Then 'test/test_helper.rb' was checked in
    And 'test/the_perfect_gem_test.rb' was checked in

  Scenario: testunit
    Given a working directory
    And I have configured git sanely
    And I intend to test with testunit
    When I generate a project named 'the-perfect-gem' that is 'zomg, so good'

    Then 'test/test_helper.rb' was checked in
    And 'test/the_perfect_gem_test.rb' was checked in

  Scenario: cucumber
    Given a working directory
    And I have configured git sanely
    When I generate a project named 'the-perfect-gem' that is 'zomg, so good'

    Then 'features/the_perfect_gem.feature' was checked in
    And 'features/support/env.rb' was checked in
    And 'features/steps/the_perfect_gem_steps.rb' was checked in