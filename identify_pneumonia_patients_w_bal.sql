select distinct pneumonia_new.hadm_id, pneumonia_new.subject_id, bal.hadm_id
from bal, pneumonia_new
where pneumonia_new.hadm_id=bal.hadm_id