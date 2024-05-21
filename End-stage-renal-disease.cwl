cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  end-stage-renal-disease-aftercare---primary:
    run: end-stage-renal-disease-aftercare---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  end-stage-renal-disease-haemodialysis---primary:
    run: end-stage-renal-disease-haemodialysis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-aftercare---primary/output
  end-stage-renal-disease-aneurysm---primary:
    run: end-stage-renal-disease-aneurysm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-haemodialysis---primary/output
  end-stage-renal-disease-rejected---primary:
    run: end-stage-renal-disease-rejected---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-aneurysm---primary/output
  end-stage-renal-disease-posttransplantation---primary:
    run: end-stage-renal-disease-posttransplantation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-rejected---primary/output
  end-stage-renal-disease-proteinuria---primary:
    run: end-stage-renal-disease-proteinuria---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-posttransplantation---primary/output
  continuous-end-stage-renal-disease---primary:
    run: continuous-end-stage-renal-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-proteinuria---primary/output
  end-stage-renal-disease-graft---primary:
    run: end-stage-renal-disease-graft---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: continuous-end-stage-renal-disease---primary/output
  end-stage-renal-disease-removal---primary:
    run: end-stage-renal-disease-removal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-graft---primary/output
  end-stage-renal-disease-transplanted---primary:
    run: end-stage-renal-disease-transplanted---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-removal---primary/output
  end-stage-renal-disease-occlusion---primary:
    run: end-stage-renal-disease-occlusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-transplanted---primary/output
  end-stage-renal-disease-stenosis---primary:
    run: end-stage-renal-disease-stenosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-occlusion---primary/output
  end-stage-renal-disease-access---primary:
    run: end-stage-renal-disease-access---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-stenosis---primary/output
  recipient-end-stage-renal-disease---primary:
    run: recipient-end-stage-renal-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-access---primary/output
  end-stage-renal-disease-cadaver---primary:
    run: end-stage-renal-disease-cadaver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: recipient-end-stage-renal-disease---primary/output
  end-stage-renal-disease-associated---primary:
    run: end-stage-renal-disease-associated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-cadaver---primary/output
  chronic-end-stage-renal-disease---primary:
    run: chronic-end-stage-renal-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-associated---primary/output
  vascular-end-stage-renal-disease---primary:
    run: vascular-end-stage-renal-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: chronic-end-stage-renal-disease---primary/output
  end-stage-renal-disease-unspecified---primary:
    run: end-stage-renal-disease-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: vascular-end-stage-renal-disease---primary/output
  end-stage-renal-disease-automated---primary:
    run: end-stage-renal-disease-automated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-unspecified---primary/output
  mechanical-end-stage-renal-disease---primary:
    run: mechanical-end-stage-renal-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-automated---primary/output
  end-stage-renal-disease-failure---primary:
    run: end-stage-renal-disease-failure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: mechanical-end-stage-renal-disease---primary/output
  end-stage-renal-disease-donor---primary:
    run: end-stage-renal-disease-donor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-failure---primary/output
  end-stage-renal-disease-thrombosis---primary:
    run: end-stage-renal-disease-thrombosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-donor---primary/output
  other-end-stage-renal-disease---primary:
    run: other-end-stage-renal-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-thrombosis---primary/output
  end-stage-renal-disease-training---primary:
    run: end-stage-renal-disease-training---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: other-end-stage-renal-disease---primary/output
  end-stage-renal-disease-blame---primary:
    run: end-stage-renal-disease-blame---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-training---primary/output
  end-stage-renal-disease-haemorrhage---primary:
    run: end-stage-renal-disease-haemorrhage---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-blame---primary/output
  end-stage-renal-disease-level---primary:
    run: end-stage-renal-disease-level---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-haemorrhage---primary/output
  end-stage-renal-disease-examination---primary:
    run: end-stage-renal-disease-examination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-level---primary/output
  end-stage-renal-disease-insertion---primary:
    run: end-stage-renal-disease-insertion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-examination---primary/output
  end-stage-renal-disease-nonbeating---primary:
    run: end-stage-renal-disease-nonbeating---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-insertion---primary/output
  temporary-end-stage-renal-disease---primary:
    run: temporary-end-stage-renal-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-nonbeating---primary/output
  end-stage-renal-disease-exploration---primary:
    run: end-stage-renal-disease-exploration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: temporary-end-stage-renal-disease---primary/output
  end-stage-renal-disease-catheter---primary:
    run: end-stage-renal-disease-catheter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-exploration---primary/output
  renal---primary:
    run: renal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-catheter---primary/output
  end-stage-renal-disease-heart---primary:
    run: end-stage-renal-disease-heart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: renal---primary/output
  end-stage-renal-disease-procedure---primary:
    run: end-stage-renal-disease-procedure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-heart---primary/output
  end-stage-renal-disease-perfusion---primary:
    run: end-stage-renal-disease-perfusion---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-procedure---primary/output
  extracorporeal-end-stage-renal-disease---primary:
    run: extracorporeal-end-stage-renal-disease---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-perfusion---primary/output
  end-stage-renal-disease-allotransplantation---primary:
    run: end-stage-renal-disease-allotransplantation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: extracorporeal-end-stage-renal-disease---primary/output
  end-stage-renal-disease-excision---primary:
    run: end-stage-renal-disease-excision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-allotransplantation---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: end-stage-renal-disease-excision---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
