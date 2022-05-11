SELECT patient_id, patient_name, conditions
    FROM Patients
WHERE REGEXP_INSTR(conditions, '^DIAB1|\s+DIAB1') <> 0