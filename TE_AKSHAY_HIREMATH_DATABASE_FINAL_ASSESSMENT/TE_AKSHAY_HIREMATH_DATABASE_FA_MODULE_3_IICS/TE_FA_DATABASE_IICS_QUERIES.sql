SELECT * from Cinema_ticket_target_iics ;

select * from Sum_tickets;

create table TE_FA_Hospital_details_iics
(
Hospital_key int,
Hospital_Registraion_No int,
Hospital_Name varchar(250),
Hospital_city varchar(250),
Hospital_Ph_no bigint
);
alter  table TE_FA_Hospital_details_iics
add   Check_sum int;

SELECT * FROM AGGREGATE_PROVIDER_IICS;
SELECT * FROM TE_FA_AGGREGATOR_MAX;

create table TE_FA_Covid_HealthCare_LK
(
dimension_key int,
DRG_ID int,
DRG_Definition    varchar(100),
Provider_Id int,
Provider_Name varchar(100),
Provider_Street_Address varchar(100),
Provider_City varchar(100),
Provider_State varchar(100),
Provider_Zip_Code int,
Hospital_Referral_Region varchar(100),
Total_Discharges int,
Average_Covered_Charges float,
Average_Total_Payments    float,
Average_Medicare_Payments float,
start_date date,
end_date date,
check_sum varchar(100)
);
select * from TE_FA_Covid_HealthCare_LK;

update TE_FA_Covid_Healthcare_details set DRG_ID=40 where Provider_Id=10001;


create table TE_FA_Cinema_Ticket_Destination
(
dimension_key int,
Film_Type varchar(250),
film_code varchar(250),
cinema_code varchar(250),
total_sales int,
tickets_sold int,
tickets_out	int,
show_time varchar(250),
occu_perc varchar(250),
ticket_price float,
ticket_use	int,
capacity varchar(250),
show_date date	,
show_month int,
show_quarter int,
show_day varchar(250),
check_sum varchar(100)
);
select * from TE_FA_Cinema_Ticket tfct ;
select * from TE_FA_Cinema_Ticket_Destination

drop table TE_FA_Cinema_Ticket_Destination;

alter table TE_FA_Cinema_Ticket
alter column show_time int;

update TE_FA_Cinema_Ticket
set tickets_sold=50 where capacity=610;

select * from SF_TE_FA_Cinema_Ticket






