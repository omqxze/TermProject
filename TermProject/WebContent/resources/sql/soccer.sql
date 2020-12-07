create table if not exists player(
	p_id INTEGER primary key not null,
	p_name varchar(50) not null,
	p_age INTEGER,
	p_nat varchar(30),
	p_club varchar(30),
	p_position varchar(10),
	p_number INTEGER,
	p_joined varchar(40),
	p_loan varchar(50),
	p_loanUntil varchar(30),
	p_height varchar(10),
	p_weight varchar(20)
)DEFAULT CHARSET=utf8 COLLATE utf8_general_ci;


