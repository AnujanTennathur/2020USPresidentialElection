# Project Feedback

## Data Construction
- 10/10 - The appropriate number of unique data sources is used
- 19/20 - Database includes at least 3 or more tables in 3rd normal form
    - Technically the democrat_vote and republican_vote percentages depend on the raw vote numbers, and so this isn't in 3rd normal form
- 9/10 - Primary and foreign keys are defined and represent real relationships between the data
    - You don't have the foreign keys defined between your election table and your fips table like you say you do
- 8/10 - Indexes of the appropriate type have been created where reasonable, or justification is given as to why they are not useful in this context
    - I don't see any indexes besides your primary keys, but I could see some options. County name and state in the fips table might be good candidates, maybe area_name in unemployment
- 4/5  - Good identifier naming conventions have been followed and identifiers are consistent
    - Some of these could be more descriptive. For example, I'm forced to assume that the election table is the election from 2020. Or that "name" in the fips table corresponds to a county name
- 8/10 - Other constraints have been added to columns to help maintain data integrity
    - You could have come up with more constraints than this pretty easily. More not null constraints, or more check constraints

## Problem/Solution Construction
- 10/10 - The problem is clearly written and requires no outside information
    - Very doable I think
- 14/15 - The learning objectives are clearly indicated and met in the course of answering the problem
    - Thanks for including these in the problem! You are one of the few to do so thus far.
    - I don't think you need DISTINCT to answer the second question though. In fact, I think your usage of it may have led you astray
- 5/5 - The problem is standalone and could be handed to another student to complete
- 9/10 - The solution to the problem is both correct and complete with queries and explanations
    - Counting distinct county names is going to lead to problem since the same county name shows up multiple times correct? You just want to count the number of rows

## Presentation
- 14/15 - Slides well constructed, aesthetic, and not walls of text or unreadable database tables
    - Some slides very busy with text and little images
    - Color theming was a bit all over the place
- 15/15 - Talk feels smooth and practiced, good sharing of responsibilities, presenters feel knowledgeable
    - This felt pretty good. You were clear and articulate and didn't talk too fast
    - ERD doesn't stand for Easily Readable Diagram (which is what I think you said) but rather Entity Relationship Diagram. But I rather like Easily Readable Diagram!
- 5/5 - Presenters are able to answer questions effectively at the end
    - These went fine


## Total: 130/140 = 92.8%

## My SQL solutions
```sql
SELECT AVG(u.unemployment_rate_2020)
FROM unemployment AS u
JOIN fips AS f
	ON u.fips_code = f.fips
JOIN election AS e
	ON e.county = f.name AND e.state = f.state
WHERE e.high_school_graduate_and_equivalent BETWEEN 20 AND 30
	AND democrat_vote > republican_vote
;



SELECT COUNT(*) / (SELECT COUNT(*) FROM unemployment)::float * 100 AS percent
FROM unemployment AS u
JOIN fips AS f
	ON u.fips_code = f.fips
JOIN election AS e
	ON e.county = f.name AND e.state = f.state
WHERE e.graduate_or_professional_degree >= 10
	AND e.mean_income >= 70000
  AND u.employed_2020 > 100000
  AND e.republican_vote > e.democrat_vote
  AND u.unemployment_rate_2020 < 5
;
```
