----1
SELECT 
	Nome,
	Ano
FROM Filmes

----2
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
ORDER BY Ano

----3
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
ORDER BY Ano

----4
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano = '1997'

----5
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Ano > 2000 

----6
SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7
SELECT 
	Ano, 
	COUNT(*)  Quantidade	
FROM Filmes
WHERE Ano <> ''
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
	FROM Atores
WHERE Genero = 'M' 
GROUP BY Id, PrimeiroNome, UltimoNome, Genero

--9
SELECT 
	Id,
	PrimeiroNome,
	UltimoNome,
	Genero
	FROM Atores
WHERE Genero = 'F' 
GROUP BY Id, PrimeiroNome, UltimoNome, Genero
ORDER BY PrimeiroNome

--10
SELECT 
	F.Nome,
	G.Genero
FROM 
	Filmes F 
INNER JOIN
	FilmesGenero FG
	ON F.Id = FG.Id
INNER JOIN
	Generos G
	ON FG.Id = G.Id
	
----11
SELECT 
	F.Nome,
	G.Genero
FROM 
	Filmes F 
INNER JOIN
	FilmesGenero FG
	ON F.Id = FG.Id
INNER JOIN
	Generos G
	ON FG.Id = G.Id
WHERE Genero = 'Mist�rio'

--12
SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM 
	Filmes F 
INNER JOIN
	Atores A
	ON F.Id = A.Id
INNER JOIN
	ElencoFilme EF
	ON A.Id = EF.Id



	
 







