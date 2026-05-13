# Pipeline

Production pipeline dlya sozdaniya klientskikh uchebnykh paketov, v kotorykh prezentatsiya yavlyaetsya tsentralnym, no ne edinstvennym artefaktom, a brending mozhet menyat'sya pod raznykh zakazchikov bez peresborki uchebnogo yadra. Pipeline takzhe mozhet gotovit `online-ready` i `self-paced` versii kursov, a takzhe dopolnyat paket metodicheskimi materialami dlya rabochikh.

## Struktura

- `01_Docs` - bazovye dokumenty, reglamenty, opisaniya i resheniya po proektu; authoritative core zhivet v `README + Blueprint + Workflow + Definition of Done + QA Gates`, a notes-sloi ne podmenyayut eti pravila.
- `02_Research` - issledovaniya, analiz, chernoviki i sobrannye materialy.
- `03_Templates` - shablony dokumentov, struktur, cheklistov i prezentatsiy.
- `04_QA` - kriterii proverki, review-materialy i kontrol kachestva.
- `05_Release` - finalnye klientskie pakety i gotovye rezul'taty; starter drafts i neapproved materialy ne dolzhny zhyt zdes kak release.

## Minimum base

- `01_Docs/Pipeline_Blueprint_v1.md`
- `01_Docs/Definition_of_Done_v1.md`
- `01_Docs/Operational_Workflow_v1.md`
- `04_QA/QA_Gates_v1.md`
- `03_Templates/Course_Brief_Template.md`
- `03_Templates/Source_Register_Template_v1.md`
- `03_Templates/Language_Style_Guide_Template_v1.md`
- `03_Templates/Terminology_Glossary_Template_v1.md`
- `03_Templates/Job_Map_Template_v1.md`
- `03_Templates/Learning_Outcomes_Template_v1.md`
- `03_Templates/Course_Architecture_Template_v1.md`
- `03_Templates/Worker_Behavior_Map_Template_v1.md`
- `03_Templates/Slide_Script_Template.md`
- `03_Templates/Asset_Register_Template_v1.md`
- `03_Templates/QA_Report_Template_v1.md`
- `03_Templates/Test_Pack_Template_v1.md`
- `03_Templates/Answer_Key_Template_v1.md`

## Optional expansion layers

- `01_Docs/Feedback_Learning_Loop_v0.1.md`
- `01_Docs/Language_Rollout_Plan_v0.1.md`
- `01_Docs/Multilingual_Delivery_Concept_v0.1.md`
- `01_Docs/Online_Gateway_Concept_v0.1.md`
- `01_Docs/Pipeline_Perspective_Manifesto_v0.1.md`
- `01_Docs/Pipeline_Gap_Audit_2026-05-12_v1.md`
- `03_Templates/Master_Transcript_Template_v1.md`
- `03_Templates/Terminology_Glossary_Multilang_Template_v1.md`
- `03_Templates/Visual_Label_Map_Template_v1.md`
- `03_Templates/ITR_Presentation_Requirements_Template_v1.md`
- `03_Templates/Task_Board_Template_v1.md`
- `03_Templates/Release_Note_Template_v1.md`
- `03_Templates/Pilot_Report_Template_v1.md`
- `03_Templates/Test_Check_Sheet_Template_v1.md`
- `03_Templates/Brand_Profile_Template_v1.md`
- `03_Templates/Client_Feedback_Form_Template_v1.md`
- `03_Templates/Client_Feedback_Form_Short_Template_v1.md`
- `03_Templates/Client_Support_Offer_Template_v1.md`
- `03_Templates/Design_Options_Pack_Template_v1.md`
- `03_Templates/Gateway_Event_Map_Template_v1.md`
- `03_Templates/Gateway_Manifest_Template_v1.md`
- `03_Templates/Gateway_Spec_Template_v1.md`
- `03_Templates/Instructor_Guide_Template_v1.md`
- `03_Templates/Worker_Instruction_Template_v1.md`
- `03_Templates/Worker_Handout_Template_v1.md`
- `03_Templates/Update_Log_Template_v1.md`

## Pervyy aktivnyy kurs

- `02_Research/Montazhnik_lesov`
