# A table "Titanic" that stores info about Titanic passengers has the following columns:
# 
#     integer passenger_id
#     boolean survived
#     integer passenger_class
#     varchar(20) first_name
#     varchar(20) last_name
#     boolean is_male
#     integer age (in 1912)
#     integer sibsp (number of siblings/spouses aboard)
#     integer parch (number of parents/children aboard)
# 
# Write a query that selects the info about each passenger in the following columns (keep the order of columns):
# 
#     full name (first name and last name in one column)
#     birth year
#     class
#     whether the passenger travels alone

SELECT
    concat(first_name, " ", last_name) AS "full name",
    1912 - age AS "birth year",
    passenger_class,
    sibsp = 0 AND parch = 0
FROM
    Titanic
;
