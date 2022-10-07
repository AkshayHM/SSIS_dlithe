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