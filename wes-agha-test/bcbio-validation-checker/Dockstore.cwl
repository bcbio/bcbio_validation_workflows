#!/usr/bin/env cwl-runner

class: CommandLineTool
id: "bcbio-validation-checker"
label: "Compare bcbio validation results against expected baseline"

cwlVersion: v1.0

requirements:
- class: DockerRequirement
  dockerPull: quay.io/bcbio/bcbio-validation-checker

inputs:
  baseline:
    type: File
    inputBinding:
      position: 1

  comparison:
    type:
      items:
      - File
      - 'null'
      type: array
    inputBinding:
      position: 2

outputs:
  output:
    type: File
    outputBinding:
      glob: "results.json"

  log:
    type: File
    outputBinding:
      glob: "log.txt"

baseCommand: ["python", "/usr/local/bin/bcbio_check_validation.py"]
