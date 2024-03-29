create or replace type ut_coverage_sonar_reporter under ut_coverage_reporter_base(
  /*
  utPLSQL - Version 3
  Copyright 2016 - 2021 utPLSQL Project

  Licensed under the Apache License, Version 2.0 (the "License"):
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  */

  /**
  * Builds a coverage XML report that follows rules described in
  * https://docs.sonarqube.org/latest/analysis/generic-test/
  */
  constructor function ut_coverage_sonar_reporter(
    self in out nocopy ut_coverage_sonar_reporter
  ) return self as result,

  overriding member procedure after_calling_run(self in out nocopy ut_coverage_sonar_reporter, a_run in ut_run),

  overriding member function get_description return varchar2
)
/
