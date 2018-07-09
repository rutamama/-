
create table prjoinmember (
	prnum		number primary key,
	prid         varchar2(30) unique,
    prpw         varchar2(40) not null,
    prnickname   varchar2(30) not null,
	prmail	    varchar2(100) not null,
    pryear		varchar2(30) not null,
    prmonth		varchar2(30) not null,
	prgen        varchar2(30) not null  
);

create sequence prnum_seq;

create table prgroup (
   	prid	varchar2(30) unique,
	gr0		varchar2(10) not null,
   	gr1		varchar2(10) not null,
    gr2   	varchar2(10) not null,
	gr3	    varchar2(10) not null,
    gr4		varchar2(10) not null,
    gr5		varchar2(10) not null,
	gr6     varchar2(10) not null,
	gr7		varchar2(10) not null,
	gr8		varchar2(10) not null,
	gr9		varchar2(10) not null,
	gr10	varchar2(10) not null,
	gr11	varchar2(10) not null,
	prgen   varchar2(30) not null  
);

create table prmessege (
	mnum	    	number primary key,
	mid             varchar2(30) not null,
    mcontents	    varchar2(100) not null,
    minputdate      date    default sysdate
);

create sequence prmessege_seq;

