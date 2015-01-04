create table persons(
        id integer primary key,
        firstname varchar(30),
        lastname varchar(50) not null,
        birthday timestamp
        );

create table pupils(
        id integer primary key,
        personid integer,
        school_classid integer,
        foreign key (personid) references persons(id),
        foreign key (school_classid) references school_classes(id)
        );

create table school_classes(
        id integer primary key,
        description varchar(10)
        );

insert into school_classes(id, description)
    values(NULL, "CS-1st");

insert into persons(id, firstname, lastname, birthday)
    values(NULL, "Test", "User", 660009600);
insert into pupils(id, personid, school_classid)
    values(NULL, 1, 1);
