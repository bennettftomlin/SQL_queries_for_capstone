Select * 
from mimiciii.pneumonia_bal_primary_visit 
	left outer join mimiciii.admissions on pneumonia_bal_primary_visit.hadm_id=admissions.hadm_id
	left outer join mimiciii.cptevents on pneumonia_bal_primary_visit.hadm_id=cptevents.hadm_id 
	left outer join mimiciii.diagnoses_icd on pneumonia_bal_primary_visit.hadm_id=diagnoses_icd.hadm_id
	left outer join mimiciii.drgcodes on pneumonia_bal_primary_visit.hadm_id=drgcodes.hadm_id
	left outer join mimiciii.procedures_icd on pneumonia_bal_primary_visit.hadm_id=procedures_icd.hadm_id where procedures_icd.seq_num=1;