USE VANSH20;

-- CREATE table name 'dev'
CREATE TABLE DEV(
  NAME VARCHAR(200),
  GIT_ID VARCHAR(1000),
  SKILLS VARCHAR(1000)
);

-- CREATE table project
CREATE TABLE PROJECT(
  GIT_ID VARCHAR(1000),
  PROJECTS VARCHAR(1000)
);

-- INSERT values in table dev
INSERT INTO DEV (
  NAME,
  GIT_ID,
  SKILLS
) VALUES (
  'vansh',
  'frontendvansh',
  'html,css,js,reactjs,php,sql'
),
(
  'navraj',
  'navraj@sandhu',
  'html,css,js,react,nodejs,sql'
);

-- reterive all values of table dev
SELECT
  *
FROM
  DEV;

-- INSERT values in table project
INSERT INTO PROJECT (
  GIT_ID,
  PROJECTS
) VALUES (
  'frontendvansh',
  'clone sites and headphone sites or portfolio'
),
(
  'navraj@sandhu',
  'knv-app,knv-site'
);

-- reterive all values of table project
SELECT
  *
FROM
  PROJECT;

-- query to write inner join on sql
SELECT
  DEV.NAME,
  DEV.GIT_ID,
  DEV.SKILLS,
  PROJECT.*
FROM
  PROJECT
  INNER JOIN DEV
  ON DEV.GIT_ID = PROJECT.GIT_ID;