cwlVersion: v1.2
class: CommandLineTool
#Testing
#testing again
baseCommand: pdb
hints:
  DockerRequirement:
    dockerPull: quay.io/biocontainers/biobb_io:3.5.1--py_0
            
inputs:
  output_pdb_path:
    type: string
    inputBinding:
      position: 1
      prefix: --output_pdb_path
    default: 'downloaded_structure.pdb'

  config:
    type: string?
    inputBinding:
      position: 2
      prefix: --config
    default: '{"pdb_code" : "1aki"}'
       
outputs:
  output_pdb_file:
    type: File
    format: edam:format_1476
    outputBinding:
      glob: $(inputs.output_pdb_path)

$namespaces:
  edam: http://edamontology.org/
$schemas:
  - http://edamontology.org/EDAM_1.22.owl
