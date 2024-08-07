CREATE TABLE `Company` (
	`PK_COMPANY`	VARCHAR(20)	NOT NULL,
	`NAME`	VARCHAR(20)	NULL
);

CREATE TABLE `Car` (
	`PK_CAR`	VARCHAR(20)	NOT NULL,
	`FK_COMPANY`	VARCHAR(20)	NOT NULL,
	`NAME`	VARCHAR(20)	NULL,
	`YEAR`	VARCHAR(20)	NULL
);

CREATE TABLE `Options` (
	`PK_OPTION`	VARCHAR(20)	NOT NULL,
	`FK_CAR`	VARCHAR(20)	NOT NULL,
	`OPTION`	VARCHAR(20)	NULL
);

ALTER TABLE `Company` ADD CONSTRAINT `PK_COMPANY` PRIMARY KEY (
	`PK_COMPANY`
);

ALTER TABLE `Car` ADD CONSTRAINT `PK_CAR` PRIMARY KEY (
	`PK_CAR`,
	`FK_COMPANY`
);

ALTER TABLE `Options` ADD CONSTRAINT `PK_OPTIONS` PRIMARY KEY (
	`PK_OPTION`,
	`FK_CAR`
);

ALTER TABLE `Car` ADD CONSTRAINT `FK_Company_TO_Car_1` FOREIGN KEY (
	`FK_COMPANY`
)
REFERENCES `Company` (
	`PK_COMPANY`
);

ALTER TABLE `Options` ADD CONSTRAINT `FK_Car_TO_Options_1` FOREIGN KEY (
	`FK_CAR`
)
REFERENCES `Car` (
	`PK_CAR`
);
