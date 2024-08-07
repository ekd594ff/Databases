SELECT MEMBER.NAME, COUNT(HOBBY.HOBBY_PK) AS "HOBBY_COUNT", MEMBER.AGE, MEMBER.GENDER, MAX(ADDRESS.POST_ADDRESS) AS "POST_ADDRESS"
FROM 
	MEMBER_HOBBY 
    INNER JOIN HOBBY ON MEMBER_HOBBY.HOBBY_FK = HOBBY.HOBBY_PK
    INNER JOIN MEMBER ON MEMBER_HOBBY.MEMBER_FK = MEMBER.MEMBER_PK
	INNER JOIN MEMBER_ADDRESS ON MEMBER_ADDRESS.MEMBER_FK = MEMBER.MEMBER_PK
    INNER JOIN ADDRESS ON MEMBER_ADDRESS.ADDRESS_FK = ADDRESS.ADDRESS_PK
GROUP BY MEMBER.NAME, MEMBER.AGE, MEMBER.GENDER;