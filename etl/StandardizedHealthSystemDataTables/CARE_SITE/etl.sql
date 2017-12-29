 WITH gcpt_care_site AS (SELECT mimic_id as care_site_id, care_site_name as care_site_name, place_of_service_concept_id as place_of_service_concept_id, care_site_descr FROM mimic.gcpt_care_site) 
 INSERT INTO omop.CARE_SITE (care_site_id, care_site_name, place_of_service_concept_id, care_site_descr)
 SELECT gcpt_care_site.care_site_id, gcpt_care_site.care_site_name, gcpt_care_site.place_of_service_concept_id, care_site_descr
FROM gcpt_care_site 
