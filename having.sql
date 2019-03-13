SELECT fk_curso, count(*) FROM aprendices
group by fk_curso
having count(*) > 10 ;