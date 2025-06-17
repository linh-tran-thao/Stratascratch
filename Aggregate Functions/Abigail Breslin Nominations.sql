-- Count the number of movies for which Abigail Breslin was nominated for an Oscar.

select COUNT(ID) as N_MOVIES_BY_ABI
from oscar_nominees
WHERE nominee = 'Abigail Breslin';
