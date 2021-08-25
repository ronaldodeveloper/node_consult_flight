
create table vooAgendados(
   id serial primary key,
	cidadedepartida varchar(50) not null,
	cidadedestino varchar(50) not null,
	datahora timestamp not null,
	companhiaaerea varchar(50) not null
)