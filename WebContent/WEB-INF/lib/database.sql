create table student(
	roll int auto_increment primary key,
	name varchar(30) not null,
	father_name varchar(30) not null,
	mother_name varchar(30) not null,
	village varchar(30) not null,
	category varchar(30) not null,
	qualification varchar(30) not null,
	programme varchar(30) not null,
	collage varchar(30) not null,
	address text not null,
	addhar long not null,
	no long not null,
	email varchar(30) not null,
	dob date,
	admission_date datetime not null default current_timestamp);
	
	
	create table teacher(
	name varchar(30) not null,
	father_name varchar(30) not null,
	mother_name varchar(30) not null,
	village varchar(30) not null,
	category varchar(30) not null,
	qualification varchar(30) not null,
	sub varchar(30) not null,
	collage varchar(30) not null,
	address text not null,
	addhar long not null,
	no long not null,
	email varchar(30) not null primary key,
	dob date,
	joindate datetime not null default current_timestamp);
	
	create table studentfee(roll long, name varchar(20),
	programe varchar(20),
	ad_account long,
	ad_ifsc varchar(20),
	st_account long,
	st_ifsc varchar(20),
	ammount long,
	pay_date datetime not null default current_timestamp);