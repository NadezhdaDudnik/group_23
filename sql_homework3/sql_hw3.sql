 --1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 select e.employee_name, es.salary_id, s.monthly_salary from employees e 
 inner join (employee_salary es inner join salary s 
 on es.salary_id = s.id)
 on es.employee_id = e.id;

 --2. Вывести всех работников у которых ЗП меньше 2000.
 select e.employee_name, s.monthly_salary from employees e 
 inner join (employee_salary es inner join salary s 
 on es.salary_id = s.id)
 on es.employee_id = e.id
 where s.monthly_salary < 2000;

 --3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 select e.employee_name, s.monthly_salary from employees e 
 right join (employee_salary es inner join salary s 
 on es.salary_id = s.id)
 on es.employee_id = e.id where e.employee_name is NULL

 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 select e.employee_name, s.monthly_salary from employees e 
 right join (employee_salary es inner join salary s 
 on es.salary_id = s.id)
 on es.employee_id = e.id where e.employee_name is null and s.monthly_salary < 2000
 
 
 --5. Найти всех работников кому не начислена ЗП.
 select e.employee_name, s.monthly_salary from employees e 
 left join (employee_salary es inner join salary s 
 on es.salary_id = s.id)
 on es.employee_id = e.id where s.monthly_salary is NULL
 
 --6. Вывести всех работников с названиями их должности.
 select e.employee_name, r.role_name from employees e
 inner join (roles_employee re inner join roles r 
 on re.role_id = r.id)
 on re.employee_id = e.id
 
 --7. Вывести имена и должность только Java разработчиков.
 select e.employee_name, r.role_name from employees e
 inner join (roles_employee re inner join roles r 
 on re.role_id = r.id)
 on re.employee_id = e.id where r.role_name like '%Java%' and r.role_name NOT LIKE '%JavaScript%'
 
 --8. Вывести имена и должность только Python разработчиков.
 select e.employee_name, r.role_name from employees e
 inner join (roles_employee re inner join roles r 
 on re.role_id = r.id)
 on re.employee_id = e.id where r.role_name like '%Python%'
 
 --9. Вывести имена и должность всех QA инженеров.
 select e.employee_name, r.role_name from employees e
 inner join (roles_employee re inner join roles r 
 on re.role_id = r.id)
 on re.employee_id = e.id where r.role_name like '%QA%'
 
 --10. Вывести имена и должность ручных QA инженеров.
 select e.employee_name, r.role_name from employees e
 inner join (roles_employee re inner join roles r 
 on re.role_id = r.id)
 on re.employee_id = e.id where r.role_name like '%Manual_QA%'
 
 --11. Вывести имена и должность автоматизаторов QA
  select e.employee_name, r.role_name from employees e
 inner join (roles_employee re inner join roles r 
 on re.role_id = r.id)
 on re.employee_id = e.id where r.role_name like '%Automation_QA%'
 
 --12. Вывести имена и зарплаты Junior специалистов
 select e.employee_name, s.monthly_salary, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%Junior%'
 
 --13. Вывести имена и зарплаты Middle специалистов
 select e.employee_name, s.monthly_salary, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%Middle%'
 
 --14. Вывести имена и зарплаты Senior специалистов
  select e.employee_name, s.monthly_salary, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%Senior%'
 
 --15. Вывести зарплаты Java разработчиков
 select e.employee_name, s.monthly_salary, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%Java_developer%'
 
 --16. Вывести зарплаты Python разработчиков
 select e.employee_name, s.monthly_salary, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%Python_developer%'
 
 --17. Вывести имена и зарплаты Junior Python разработчиков
 select e.employee_name, s.monthly_salary, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name = 'Junior Python developer'
 
 --18. Вывести имена и зарплаты Middle JS разработчиков
  select e.employee_name, s.monthly_salary, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name = 'Middle JavaScript developer'
 
 --19. Вывести имена и зарплаты Senior Java разработчиков
   select e.employee_name, s.monthly_salary, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name = 'Senior Java developer'
 
 --20. Вывести зарплаты Junior QA инженеров
   select e.employee_name, s.monthly_salary from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name = 'Junior Manual QA engineer' or r.role_name = 'Junior Automation QA engineer'
 
 --21. Вывести среднюю зарплату всех Junior специалистов
 select avg(s.monthly_salary) as average_salary_of_all_Juniors, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%Junior%'
 group by r.role_name
 order by avg(s.monthly_salary) ASC
 
 --22. Вывести сумму зарплат JS разработчиков
 select sum(s.monthly_salary) as summa_of_all_JS, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%JavaScript_developer%'
 group by r.role_name
 order by sum(s.monthly_salary) ASC
 
 --23. Вывести минимальную ЗП QA инженеров
  select min(s.monthly_salary) as min_salary_of_all_QA, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%QA%'
 group by r.role_name
 order by min(s.monthly_salary) asc
 
 --24. Вывести максимальную ЗП QA инженеров
 select max(s.monthly_salary) as max_salary_of_all_QA, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%QA%'
 group by r.role_name
 order by max(s.monthly_salary) asc
 
 --25. Вывести количество QA инженеров
 select count(e.id) as count_of_QA, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%QA%'
 group by r.role_name
 order by count(e.id) asc
 
 --26. Вывести количество Middle специалистов.
 select count(e.id) as count_of_middle, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%Middle%'
 group by r.role_name
 order by count(e.id) asc
 
 --27. Вывести количество разработчиков
 select count(e.id) as count_of_developers, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%developer%'
 group by r.role_name
 order by count(e.id) asc
 
 --28. Вывести фонд (сумму) зарплаты разработчиков
 select sum(s.monthly_salary) as sum_of_salary_developers, r.role_name from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where r.role_name like '%developer%'
 group by r.role_name
 order by sum(s.monthly_salary) asc
 
 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 select e.employee_name, r.role_name, s.monthly_salary from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id
 order by s.monthly_salary asc
 
 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 select e.employee_name, r.role_name, s.monthly_salary from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where s.monthly_salary between 1700 and 2300
 order by s.monthly_salary asc
 
 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 select e.employee_name, r.role_name, s.monthly_salary from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where s.monthly_salary < 2300
 order by s.monthly_salary asc
 
 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
  select e.employee_name, r.role_name, s.monthly_salary from salary s
 inner join (employee_salary es inner join (employees e 
 inner join (roles_employee re inner join roles r
 on re.role_id = r.id)
 on e.id = re.employee_id )
 on es.employee_id = e.id )
 on s.id = es.salary_id where s.monthly_salary in (1100, 1500, 2000)
 order by s.monthly_salary asc
