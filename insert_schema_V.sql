insert into type_status (description)
select distinct status 
from project_temp

insert into currency (currency_description)
select distinct transaction_currency 
from transaction_temp

insert into location (location_type_code, location_type_name  )
select distinct location_type_code, location_type_name  
from location_temp

insert ignore into geoname(geoname_id,place_name,latitude,longitude,location_id,gazetteer_adm_code,gazetteer_adm_name,location_class,geographic_exactness) 
select distinct gt.geoname_id,gt.place_name, gt.latitude, gt.longitude, l.location_id, gt.gazetteer_adm_code, gt.gazetteer_adm_name, gt.location_class, gt.geographic_exactness 
from geoname_temp as gt  
inner join location as l on gt.location_type_code = l.location_type_code

insert into country_code (name,iso2, name_aiddata_code, name_cow_alpha, name_cow_numeric, name_fao_code, name_fips, name_geoname_id, name_imf_code)
select distinct name,iso2, name_aiddata_code, name_cow_alpha, name_cow_numeric, name_fao_code, name_fips, name_geonames_id, name_imf_code
from country_code_temp

INSERT INTO project(
    project_id,
    is_geocoded,
    project_title,
    start_actual_isodate,
    end_actual_isodate,
    donors,
    donors_iso3,
    country_id,
    ad_sector_codes,
    ad_sector_names,
    status_id,
    transaction_start_year,
    transaction_end_year,
    total_commitments,
    total_disburments)
SELECT distinct
    pt.project_id,
    pt.is_geocoded,
    pt.project_title,
    IF(STRCMP(pt.start_actual_isodate,'') = 0,NULL,DATE_FORMAT(STR_TO_DATE(pt.start_actual_isodate,'%d/%m/%Y'), '%Y-%m-%d')),
    IF(STRCMP(pt.end_actual_isodate,'') = 0,NULL,DATE_FORMAT(STR_TO_DATE(pt.end_actual_isodate,'%d/%m/%Y'), '%Y-%m-%d')),
    pt.donors,
    pt.donors_iso3,
    cct.country_id,
    pt.ad_sector_codes,
    pt.ad_sector_names,
    ts.id_status,
    pt.transactions_start_year,
    pt.transactions_end_year,
    IF(strcmp(pt.total_commitments,'') = 0,NULL,pt.total_commitments),
    IF(strcmp(pt.total_disbursements,'') = 0,NULL,pt.total_disbursements)
from project_temp as pt
inner join type_status as ts on pt.status = ts.description
inner join country_code as cct on pt.recipients_iso3 = cct.name_cow_alpha 

INSERT INTO transaction(
	transaction_code,
    transaction_isodate,
    transaction_year,
    transaction_value_code,
    transaction_currency_id,
    transaction_value,
    project_id)
SELECT DISTINCT 
	tt.transaction_id,
    IF(STRCMP(tt.transaction_isodate,'') = 0,NULL,DATE_FORMAT(STR_TO_DATE(tt.transaction_isodate,'%d/%m/%Y'), '%Y-%m-%d')),
    tt.transaction_year,
    tt.transaction_value_code,
    c.currency_id,
    tt.transaction_value,
    tt.project_id
from transaction_temp as tt
inner join currency as c on tt.transaction_currency = c.currency_description

insert ignore into level_1a(
	project_id,
    project_geoname_id,
    geoname_id,
    transaction_start_year,
    transaction_end_year,
    even_split_commitments,
    even_split_disbursement
)
select distinct 
	lt.project_id,
    lt.project_location_id,
    lt.geoname_id,
    lt.transactions_start_year,
    lt.transactions_end_year,
    IF(STRCMP(lt.even_split_commitments,'') = 0,NULL,lt.even_split_commitments),
    IF(STRCMP(lt.even_split_disbursements,'') = 0,NULL,lt.even_split_disbursements)
from level_1a_temp as lt