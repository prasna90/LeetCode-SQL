-- Question 1
-- Table: Person

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | PersonId    | int     |
-- | FirstName   | varchar |
-- | LastName    | varchar |
-- +-------------+---------+
-- PersonId is the primary key column for this table.
-- Table: Address

-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | AddressId   | int     |
-- | PersonId    | int     |
-- | City        | varchar |
-- | State       | varchar |
-- +-------------+---------+
-- AddressId is the primary key column for this table.
 

-- Write a SQL query for a report that provides the following information for each person in the Person table,
-- regardless if there is an address for each of those people:

-- FirstName, LastName, City, State


-- Solution

SELECT P.FIRSTNAME,P.LASTNAME,A.CITY,A.STATE
FROM PERSON AS P
LEFT JOIN ADDRESS AS A
ON A.PERSONID=P.PERSONID;

-- Submission
Runtime: 317 ms, faster than 87.39% of MySQL online submissions for Combine Two Tables.
Memory Usage: 0B, less than 100.00% of MySQL online submissions for Combine Two Tables.
