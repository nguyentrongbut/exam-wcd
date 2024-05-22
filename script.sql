create table employee.employee
(
    id         int(3) auto_increment
        primary key,
    name       varchar(120) not null,
    birthday   varchar(120) null,
    address    varchar(120) null,
    position   varchar(120) null,
    department varchar(120) null
);


