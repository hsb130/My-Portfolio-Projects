/* Observe the Table (Entity) and their Columns (Attributes) */

SELECT *
FROM Question q;

SELECT *
FROM Answer a;

SELECT *
FROM Survey s ; 



/* query text information for Questionid */

SELECT *
FROM Question
where QuestionID = 13;

/* query all answers for specified Questionid */

SELECT AnswerText
FROM Answer
where QuestionID = 13;

/* query distribution of answer given questionid */

SELECT AnswerText, COUNT(AnswerText) 
from Answer
where QuestionID = 13 
group by AnswerText;

/* query distribution of answer given questionid and survey year */

SELECT AnswerText, COUNT(AnswerText) 
from Answer 
where QuestionID = 1 and surveyid = 2016 
group by AnswerText;

/* query number of participants for each survey */

SELECT surveyid, COUNT(DISTINCT(userid))
FROM answer
GROUP BY surveyid;


/* Joining the two tables together to see the questions and their answers for every survey year*/

SELECT a.SurveyID ,q.questiontext, a.AnswerText
FROM Answer a  Left Join Question q On a.QuestionID = q.questionid ;


/* Seperating the Answers for each survey year*/

-- for year = 2014, 
SELECT a.SurveyID ,q.questiontext, a.AnswerText
FROM Answer a  Left Join Question q On a.QuestionID = q.questionid 
WHERE a.SurveyID =2014;

-- for year  = 2016
SELECT a.SurveyID ,q.questiontext, a.AnswerText
FROM Answer a  Left Join Question q On a.QuestionID = q.questionid 
WHERE a.SurveyID =2016;


-- for year  = 2017
SELECT a.SurveyID ,q.questiontext, a.AnswerText 
FROM Answer a  Left Join Question q On a.QuestionID = q.questionid 
WHERE a.SurveyID =2017;

-- for year  = 2018
SELECT a.SurveyID ,q.questiontext, a.AnswerText 
FROM Answer a  Left Join Question q On a.QuestionID = q.questionid 
WHERE a.SurveyID =2018;

-- for year  = 2019
SELECT a.SurveyID ,q.questiontext, a.AnswerText
FROM Answer a  Left Join Question q On a.QuestionID = q.questionid 
WHERE a.SurveyID =2019;



/* Checking the Answers to Question-1 (What is your age?) */

SELECT a.SurveyID ,q.questiontext, a.AnswerText
FROM Answer a  Left Join Question q On a.QuestionID = q.questionid 
WHERE q.questionid  =1;

/* Checking the Answers to Question-2 (What is your gender?) */
SELECT a.SurveyID ,q.questiontext, a.AnswerText
FROM Answer a  Left Join Question q On a.QuestionID = q.questionid 
WHERE q.questionid  =2;






/* Creating a new table that has Question Text as columns (118 Cols) and User ID as Rows and 
the Question Answer for Each User ID will be in the respecting columns each
This will be Used for Final Analysis using Python and Power BI Data Visualizations*/

SELECT
    sub.UserID,
       MAX(CASE WHEN q.questionid = 1 THEN a.AnswerText ELSE NULL END) AS Question1,
       MAX(CASE WHEN q.questionid = 2 THEN a.AnswerText ELSE NULL END) AS Question2,
       MAX(CASE WHEN q.questionid = 3 THEN a.AnswerText ELSE NULL END) AS Question3,
       MAX(CASE WHEN q.questionid = 4 THEN a.AnswerText ELSE NULL END) AS Question4,
       MAX(CASE WHEN q.questionid = 5 THEN a.AnswerText ELSE NULL END) AS Question5,
       MAX(CASE WHEN q.questionid = 6 THEN a.AnswerText ELSE NULL END) AS Question6,
       MAX(CASE WHEN q.questionid = 7 THEN a.AnswerText ELSE NULL END) AS Question7,
       MAX(CASE WHEN q.questionid = 8 THEN a.AnswerText ELSE NULL END) AS Question8,
       MAX(CASE WHEN q.questionid = 9 THEN a.AnswerText ELSE NULL END) AS Question9,
       MAX(CASE WHEN q.questionid = 10 THEN a.AnswerText ELSE NULL END) AS Question10,
       MAX(CASE WHEN q.questionid = 11 THEN a.AnswerText ELSE NULL END) AS Question11,
       MAX(CASE WHEN q.questionid = 12 THEN a.AnswerText ELSE NULL END) AS Question12,
       MAX(CASE WHEN q.questionid = 13 THEN a.AnswerText ELSE NULL END) AS Question13,
       MAX(CASE WHEN q.questionid = 14 THEN a.AnswerText ELSE NULL END) AS Question14,
       MAX(CASE WHEN q.questionid = 15 THEN a.AnswerText ELSE NULL END) AS Question15,
       MAX(CASE WHEN q.questionid = 16 THEN a.AnswerText ELSE NULL END) AS Question16,
       MAX(CASE WHEN q.questionid = 17 THEN a.AnswerText ELSE NULL END) AS Question17,
       MAX(CASE WHEN q.questionid = 18 THEN a.AnswerText ELSE NULL END) AS Question18,
       MAX(CASE WHEN q.questionid = 19 THEN a.AnswerText ELSE NULL END) AS Question19,
       MAX(CASE WHEN q.questionid = 20 THEN a.AnswerText ELSE NULL END) AS Question20,
       MAX(CASE WHEN q.questionid = 21 THEN a.AnswerText ELSE NULL END) AS Question21,
       MAX(CASE WHEN q.questionid = 22 THEN a.AnswerText ELSE NULL END) AS Question22,
       MAX(CASE WHEN q.questionid = 23 THEN a.AnswerText ELSE NULL END) AS Question23,
       MAX(CASE WHEN q.questionid = 24 THEN a.AnswerText ELSE NULL END) AS Question24,
       MAX(CASE WHEN q.questionid = 25 THEN a.AnswerText ELSE NULL END) AS Question25,
       MAX(CASE WHEN q.questionid = 26 THEN a.AnswerText ELSE NULL END) AS Question26,
       MAX(CASE WHEN q.questionid = 27 THEN a.AnswerText ELSE NULL END) AS Question27,
       MAX(CASE WHEN q.questionid = 28 THEN a.AnswerText ELSE NULL END) AS Question28,
       MAX(CASE WHEN q.questionid = 29 THEN a.AnswerText ELSE NULL END) AS Question29,
       MAX(CASE WHEN q.questionid = 30 THEN a.AnswerText ELSE NULL END) AS Question30,
       MAX(CASE WHEN q.questionid = 31 THEN a.AnswerText ELSE NULL END) AS Question31,
       MAX(CASE WHEN q.questionid = 32 THEN a.AnswerText ELSE NULL END) AS Question32,
       MAX(CASE WHEN q.questionid = 33 THEN a.AnswerText ELSE NULL END) AS Question33,
       MAX(CASE WHEN q.questionid = 34 THEN a.AnswerText ELSE NULL END) AS Question34,
       MAX(CASE WHEN q.questionid = 35 THEN a.AnswerText ELSE NULL END) AS Question35,
       MAX(CASE WHEN q.questionid = 36 THEN a.AnswerText ELSE NULL END) AS Question36,
       MAX(CASE WHEN q.questionid = 37 THEN a.AnswerText ELSE NULL END) AS Question37,
       MAX(CASE WHEN q.questionid = 38 THEN a.AnswerText ELSE NULL END) AS Question38,
       MAX(CASE WHEN q.questionid = 39 THEN a.AnswerText ELSE NULL END) AS Question39,
       MAX(CASE WHEN q.questionid = 40 THEN a.AnswerText ELSE NULL END) AS Question40,
       MAX(CASE WHEN q.questionid = 41 THEN a.AnswerText ELSE NULL END) AS Question41,
       MAX(CASE WHEN q.questionid = 42 THEN a.AnswerText ELSE NULL END) AS Question42,
       MAX(CASE WHEN q.questionid = 43 THEN a.AnswerText ELSE NULL END) AS Question43,
       MAX(CASE WHEN q.questionid = 44 THEN a.AnswerText ELSE NULL END) AS Question44,
       MAX(CASE WHEN q.questionid = 45 THEN a.AnswerText ELSE NULL END) AS Question45,
       MAX(CASE WHEN q.questionid = 46 THEN a.AnswerText ELSE NULL END) AS Question46,
       MAX(CASE WHEN q.questionid = 47 THEN a.AnswerText ELSE NULL END) AS Question47,
       MAX(CASE WHEN q.questionid = 48 THEN a.AnswerText ELSE NULL END) AS Question48,
       MAX(CASE WHEN q.questionid = 49 THEN a.AnswerText ELSE NULL END) AS Question49,
       MAX(CASE WHEN q.questionid = 50 THEN a.AnswerText ELSE NULL END) AS Question50,
       MAX(CASE WHEN q.questionid = 51 THEN a.AnswerText ELSE NULL END) AS Question51,
       MAX(CASE WHEN q.questionid = 52 THEN a.AnswerText ELSE NULL END) AS Question52,
       MAX(CASE WHEN q.questionid = 53 THEN a.AnswerText ELSE NULL END) AS Question53,
       MAX(CASE WHEN q.questionid = 54 THEN a.AnswerText ELSE NULL END) AS Question54,
       MAX(CASE WHEN q.questionid = 55 THEN a.AnswerText ELSE NULL END) AS Question55,
       MAX(CASE WHEN q.questionid = 56 THEN a.AnswerText ELSE NULL END) AS Question56,
       MAX(CASE WHEN q.questionid = 57 THEN a.AnswerText ELSE NULL END) AS Question57,
       MAX(CASE WHEN q.questionid = 58 THEN a.AnswerText ELSE NULL END) AS Question58,
       MAX(CASE WHEN q.questionid = 59 THEN a.AnswerText ELSE NULL END) AS Question59,
       MAX(CASE WHEN q.questionid = 60 THEN a.AnswerText ELSE NULL END) AS Question60,
       MAX(CASE WHEN q.questionid = 61 THEN a.AnswerText ELSE NULL END) AS Question61,
       MAX(CASE WHEN q.questionid = 62 THEN a.AnswerText ELSE NULL END) AS Question62,
       MAX(CASE WHEN q.questionid = 63 THEN a.AnswerText ELSE NULL END) AS Question63,
       MAX(CASE WHEN q.questionid = 64 THEN a.AnswerText ELSE NULL END) AS Question64,
       MAX(CASE WHEN q.questionid = 65 THEN a.AnswerText ELSE NULL END) AS Question65,
       MAX(CASE WHEN q.questionid = 66 THEN a.AnswerText ELSE NULL END) AS Question66,
       MAX(CASE WHEN q.questionid = 67 THEN a.AnswerText ELSE NULL END) AS Question67,
       MAX(CASE WHEN q.questionid = 68 THEN a.AnswerText ELSE NULL END) AS Question68,
       MAX(CASE WHEN q.questionid = 69 THEN a.AnswerText ELSE NULL END) AS Question69,
       MAX(CASE WHEN q.questionid = 70 THEN a.AnswerText ELSE NULL END) AS Question70,
       MAX(CASE WHEN q.questionid = 71 THEN a.AnswerText ELSE NULL END) AS Question71,
       MAX(CASE WHEN q.questionid = 72 THEN a.AnswerText ELSE NULL END) AS Question72,
       MAX(CASE WHEN q.questionid = 73 THEN a.AnswerText ELSE NULL END) AS Question73,
       MAX(CASE WHEN q.questionid = 74 THEN a.AnswerText ELSE NULL END) AS Question74,
       MAX(CASE WHEN q.questionid = 75 THEN a.AnswerText ELSE NULL END) AS Question75,
       MAX(CASE WHEN q.questionid = 76 THEN a.AnswerText ELSE NULL END) AS Question76,
       MAX(CASE WHEN q.questionid = 77 THEN a.AnswerText ELSE NULL END) AS Question77,
       MAX(CASE WHEN q.questionid = 78 THEN a.AnswerText ELSE NULL END) AS Question78,
       MAX(CASE WHEN q.questionid = 79 THEN a.AnswerText ELSE NULL END) AS Question79,
       MAX(CASE WHEN q.questionid = 80 THEN a.AnswerText ELSE NULL END) AS Question80,
       MAX(CASE WHEN q.questionid = 81 THEN a.AnswerText ELSE NULL END) AS Question81,
       MAX(CASE WHEN q.questionid = 82 THEN a.AnswerText ELSE NULL END) AS Question82,
       MAX(CASE WHEN q.questionid = 83 THEN a.AnswerText ELSE NULL END) AS Question83,
       MAX(CASE WHEN q.questionid = 84 THEN a.AnswerText ELSE NULL END) AS Question84,
       MAX(CASE WHEN q.questionid = 85 THEN a.AnswerText ELSE NULL END) AS Question85,
       MAX(CASE WHEN q.questionid = 86 THEN a.AnswerText ELSE NULL END) AS Question86,
       MAX(CASE WHEN q.questionid = 87 THEN a.AnswerText ELSE NULL END) AS Question87,
       MAX(CASE WHEN q.questionid = 88 THEN a.AnswerText ELSE NULL END) AS Question88,
       MAX(CASE WHEN q.questionid = 89 THEN a.AnswerText ELSE NULL END) AS Question89,
       MAX(CASE WHEN q.questionid = 90 THEN a.AnswerText ELSE NULL END) AS Question90,
       MAX(CASE WHEN q.questionid = 91 THEN a.AnswerText ELSE NULL END) AS Question91,
       MAX(CASE WHEN q.questionid = 92 THEN a.AnswerText ELSE NULL END) AS Question92,
       MAX(CASE WHEN q.questionid = 93 THEN a.AnswerText ELSE NULL END) AS Question93,
       MAX(CASE WHEN q.questionid = 94 THEN a.AnswerText ELSE NULL END) AS Question94,
       MAX(CASE WHEN q.questionid = 95 THEN a.AnswerText ELSE NULL END) AS Question95,
       MAX(CASE WHEN q.questionid = 96 THEN a.AnswerText ELSE NULL END) AS Question96,
       MAX(CASE WHEN q.questionid = 97 THEN a.AnswerText ELSE NULL END) AS Question97,
       MAX(CASE WHEN q.questionid = 98 THEN a.AnswerText ELSE NULL END) AS Question98,
       MAX(CASE WHEN q.questionid = 99 THEN a.AnswerText ELSE NULL END) AS Question99,
       MAX(CASE WHEN q.questionid = 100 THEN a.AnswerText ELSE NULL END) AS Question100,
       MAX(CASE WHEN q.questionid = 101 THEN a.AnswerText ELSE NULL END) AS Question101,
       MAX(CASE WHEN q.questionid = 102 THEN a.AnswerText ELSE NULL END) AS Question102,
       MAX(CASE WHEN q.questionid = 103 THEN a.AnswerText ELSE NULL END) AS Question103,
       MAX(CASE WHEN q.questionid = 104 THEN a.AnswerText ELSE NULL END) AS Question104,
       MAX(CASE WHEN q.questionid = 105 THEN a.AnswerText ELSE NULL END) AS Question105,
       MAX(CASE WHEN q.questionid = 106 THEN a.AnswerText ELSE NULL END) AS Question106,
       MAX(CASE WHEN q.questionid = 107 THEN a.AnswerText ELSE NULL END) AS Question107,
       MAX(CASE WHEN q.questionid = 108 THEN a.AnswerText ELSE NULL END) AS Question108,
       MAX(CASE WHEN q.questionid = 109 THEN a.AnswerText ELSE NULL END) AS Question109,
       MAX(CASE WHEN q.questionid = 110 THEN a.AnswerText ELSE NULL END) AS Question110,
       MAX(CASE WHEN q.questionid = 111 THEN a.AnswerText ELSE NULL END) AS Question111,
       MAX(CASE WHEN q.questionid = 112 THEN a.AnswerText ELSE NULL END) AS Question112,
       MAX(CASE WHEN q.questionid = 113 THEN a.AnswerText ELSE NULL END) AS Question113,
       MAX(CASE WHEN q.questionid = 114 THEN a.AnswerText ELSE NULL END) AS Question114,
       MAX(CASE WHEN q.questionid = 115 THEN a.AnswerText ELSE NULL END) AS Question115,
       MAX(CASE WHEN q.questionid = 116 THEN a.AnswerText ELSE NULL END) AS Question116,
       MAX(CASE WHEN q.questionid = 117 THEN a.AnswerText ELSE NULL END) AS Question117,
       MAX(CASE WHEN q.questionid = 118 THEN a.AnswerText ELSE NULL END) AS Question118
      
FROM
    (SELECT DISTINCT a.UserID, q.questionid, a.AnswerText
     FROM Answer AS a
     CROSS JOIN Question AS q) AS sub
LEFT JOIN Answer AS a ON sub.UserID = a.UserID AND sub.questionid = a.QuestionID
LEFT JOIN Question AS q ON sub.questionid = q.questionid
GROUP BY sub.UserID;













