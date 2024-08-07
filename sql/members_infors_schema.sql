CREATE TABLE `HOBBY` (
	`HOBBY_PK`	VARCHAR(20)	NOT NULL,
	`HOBBY_NAME`	VARCHAR(20)	NULL
);

CREATE TABLE `ADDRESS` (
	`ADDRESS_PK`	VARCHAR(20)	NOT NULL,
	`POST_ADDRESS`	VARCHAR(300)	NULL
);

CREATE TABLE `MEMBER` (
	`MEMBER_PK`	VARCHAR(20)	NOT NULL,
	`NAME`	VARCHAR(20)	NULL,
	`AGE`	VARCHAR(20)	NULL,
	`GENDER`	VARCHAR(20)	NULL,
	`PHONE`	VARCHAR(20)	NULL,
	`EMAIL`	VARCHAR(300)	NULL
);

CREATE TABLE `MEMBER_HOBBY` (
	`MEMBER_HOBBY_PK`	VARCHAR(20)	NOT NULL,
	`MEMBER_FK`	VARCHAR(20)	NOT NULL,
	`HOBBY_FK`	VARCHAR(20)	NOT NULL
);

CREATE TABLE `MEMBER_ADDRESS` (
	`MEMBER_ADDRESS_PK`	VARCHAR(20)	NOT NULL,
	`MEMBER_FK`	VARCHAR(20)	NOT NULL,
	`ADDRESS_FK`	VARCHAR(20)	NOT NULL
);

ALTER TABLE `HOBBY` ADD CONSTRAINT `PK_HOBBY` PRIMARY KEY (
	`HOBBY_PK`
);

ALTER TABLE `ADDRESS` ADD CONSTRAINT `PK_ADDRESS` PRIMARY KEY (
	`ADDRESS_PK`
);

ALTER TABLE `MEMBER` ADD CONSTRAINT `PK_MEMBER` PRIMARY KEY (
	`MEMBER_PK`
);

ALTER TABLE `MEMBER_HOBBY` ADD CONSTRAINT `PK_MEMBER_HOBBY` PRIMARY KEY (
	`MEMBER_HOBBY_PK`,
	`MEMBER_FK`,
	`HOBBY_FK`
);

ALTER TABLE `MEMBER_ADDRESS` ADD CONSTRAINT `PK_MEMBER_ADDRESS` PRIMARY KEY (
	`MEMBER_ADDRESS_PK`,
	`MEMBER_FK`,
	`ADDRESS_FK`
);

ALTER TABLE `MEMBER_HOBBY` ADD CONSTRAINT `FK_MEMBER_TO_MEMBER_HOBBY_1` FOREIGN KEY (
	`MEMBER_FK`
)
REFERENCES `MEMBER` (
	`MEMBER_PK`
);

ALTER TABLE `MEMBER_HOBBY` ADD CONSTRAINT `FK_HOBBY_TO_MEMBER_HOBBY_1` FOREIGN KEY (
	`HOBBY_FK`
)
REFERENCES `HOBBY` (
	`HOBBY_PK`
);

ALTER TABLE `MEMBER_ADDRESS` ADD CONSTRAINT `FK_MEMBER_TO_MEMBER_ADDRESS_1` FOREIGN KEY (
	`MEMBER_FK`
)
REFERENCES `MEMBER` (
	`MEMBER_PK`
);

ALTER TABLE `MEMBER_ADDRESS` ADD CONSTRAINT `FK_ADDRESS_TO_MEMBER_ADDRESS_1` FOREIGN KEY (
	`ADDRESS_FK`
)
REFERENCES `ADDRESS` (
	`ADDRESS_PK`
);
