-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/Rj1QVT
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Arrests" (
    "arrst_key" varchar   NOT NULL,
    "arrest_date" date   NOT NULL,
    "pd_cd" float   NOT NULL,
    "ky_cd" float   NOT NULL,
    "law_code" varchar   NOT NULL,
    "law_cat_cd" varchar   NOT NULL,
    "arrest_boro" varchar   NOT NULL,
    "arrest_precinct" int   NOT NULL,
    "age_group" varchar   NOT NULL,
    "perp_sex" varchar   NOT NULL,
    "perp_race" varchar   NOT NULL,
    "x_coord_cd" float   NOT NULL,
    "y_coord_cd" float   NOT NULL,
    "latitude" float   NOT NULL,
    "longitude" float   NOT NULL,
    "lon_lat" varchar   NOT NULL,
    CONSTRAINT "pk_Arrests" PRIMARY KEY (
        "arrst_key"
     )
);

CREATE TABLE "PD_CD" (
    "pd_cd" float   NOT NULL,
    "pd_desc" varchar   NOT NULL
);

CREATE TABLE "KY_CD" (
    "ky_cd" float   NOT NULL,
    "ofns_desc" varchar   NOT NULL
);

ALTER TABLE "Arrests" ADD CONSTRAINT "fk_Arrests_pd_cd" FOREIGN KEY("pd_cd")
REFERENCES "PD_CD" ("pd_cd");

ALTER TABLE "Arrests" ADD CONSTRAINT "fk_Arrests_ky_cd" FOREIGN KEY("ky_cd")
REFERENCES "KY_CD" ("ky_cd");

