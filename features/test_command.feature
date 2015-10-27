Feature: Test command
  In order to run tests written with goss
  As a user of Busser
  I want my tests to run when the goss runner plugin is installed

  Background:
    Given a test BUSSER_ROOT directory named "busser-goss-test"
    When I successfully run `busser plugin install busser-goss --force-postinstall`
    Given a suite directory named "goss"

  Scenario: A passing test suite
    Given a file in suite "goss" named "default_spec.goss" with:
    """
    {
        "command": {
            "echo hello": {
                "exit-status": "0",
                "stdout": [
                    "hello"
                ],
                "stderr": []
            }
        }
    }
    """
    When I run `busser test goss`
    Then the output should contain
    """
    """
    And the exit status should be 0

  Scenario: A failing test suite
    Given a file in suite "goss" named "default_spec.goss" with:
    """
    """
    When I run `busser test goss`
    Then I should verify some output for the goss plugin
    And the exit status should not be 0
