select admissions.admittime, admissions.hadm_id, pneumonia_bal_hadm.subject_id, dense_rank()over (partition by pneumonia_bal_hadm.subject_id order by (admissions.hadm_id) desc) as visits
from pneumonia_bal_hadm, admissions
where pneumonia_bal_hadm.subject_id = admissions.subject_id and admissions.hadm_id <= pneumonia_bal_hadm.hadm_id and (date_part('day', pneumonia_bal_hadm.admittime - admissions.admittime) < 90)
order by subject_id, visits