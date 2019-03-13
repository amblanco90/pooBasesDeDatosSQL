SELECT * FROM 
aprendices a  , materias_curso  mc
where 
a.fk_curso = mc.fk_curso
and 
documento= 1007730301;