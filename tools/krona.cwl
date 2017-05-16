cwlVersion: v1.0
class: CommandLineTool
label: visualize using krona
baseCommand: ktImportText

hints:
  SoftwareRequirement:
    packages:
      krona:
        specs: [ "https://identifiers.org/rrid/RRID:SCR_012785" ]
        version: [ "2.3", "2.7" ]

inputs:
  otu_counts:
    type: File
    format: text/tab-separated-values
    label: Tab-delimited text file
    inputBinding:
      position: 2

arguments:
  - valueFrom: $(inputs.otu_counts.basename).html
    prefix: -o

outputs:
  otu_visualization:
    type: File
    format: text/html
    outputBinding:
      glob: $(inputs.otu_counts.basename).html

$namespaces:
 edam: http://edamontology.org/
 s: http://schema.org/
$schemas:
 - http://edamontology.org/EDAM_1.16.owl
 - https://schema.org/docs/schema_org_rdfa.html

s:license: "https://www.apache.org/licenses/LICENSE-2.0"
s:copyrightHolder: "EMBL - European Bioinformatics Institute"
