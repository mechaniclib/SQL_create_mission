-- 문제 1 : 직원의 이름(FIRST_NAME), 부서명(DEPARTMENT_NAME), 근무지(CITY) 를 부서명 오름차순으로 출력하시오. (사용되지 않는 부서명 또는 근무지가 존재한다면 포함하시오) 
select e.first_name, d.department_name, l.city
from employees e, departments d, locations l
where e.department_id = d.department_id(+) and d.location_id = l.location_id(+)
order by department_name asc;






-- 문제 2 : 근무지별로 직원 수(NUMBER_OF_PEOPLE)를 내림차순으로 출력하시오 
select l.city, count(e.first_name) as NUMBER_OF_PEOPLE
from employees e, departments d, locations l
where e.department_id = d.department_id and d.location_id = l.location_id
group by l.city order by NUMBER_OF_PEOPLE desc;