# SQL_queries_for_capstone
 
identify_patients_with_pneumonia_many_icd was used to identify all patients with pneumonia related diagnoses.  This was then saved as a table labeled pneumonia_new using Dbeaver.

bal_microinfo was used to identify patients who had received a bronchoalveolar lavage that showed results for one of the 4 pathogens we were interested in.  This was then saved as a table label bal using DBeaver.

identify_pneumonia_patients_w_bal was then used to identify which patients with a pneumonia diagnosis also had a bronchoalveolar lavage that resulted in a relevant result.
This was then saved as a table labeled pneumonia_bal_hadm using DBeaver.

readmits was used to identify among these patients which ones had been previously admitted in the last 90 days.  This table was saved as pneumonia_bal_hadm_visits using DBeaver.

primary_visit was used to select only the most recent visit among those patients.  This table was saved as pneumonia_bal_primary_visit in a table using DBeaver.

join_clinical_data_lite was used to join a variety of clinical information for these patients together.  This was saved as a csv using DBeaver.

redcap Jupyter Python notebook was used to fill the redcap_distinct table that was manually created in DBeaver

redcap table is a csv that shows what the redcap_distinct table looked like before being filled

