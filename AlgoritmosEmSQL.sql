--A) Fazer um algoritmo que leia 1 número e mostre se são múltiplos de 2,3,5 ou nenhum deles

DECLARE @numero AS INT
	SET @numero = 31
	BEGIN
		IF (@numero % 2 = 0)
			PRINT 'MULTIPLO DE 2';
	END
	BEGIN
		IF (@numero % 3 = 0)
			PRINT 'MULTIPLO DE 3';
	END
	BEGIN
		IF (@numero % 5 = 0)
			PRINT 'MULTIPLO DE 5';
		ELSE
			PRINT 'não é multiplode nem de 2,3 ou 5' 
	END
	
--B) Fazer um algoritmo que leia 3 número e mostre o maior e o menor
DECLARE @n1 	AS INT,
		@n2 	AS INT,
		@n3 	AS INT,
		@maior 	AS INT,
		@menor 	AS INT
		SET @n1 = 10
		SET	@n2 = 2
		SET	@n3 = 45
		SET	@maior = @n1
		SET	@menor = @n1
		
		BEGIN	
			IF (@n2 > @maior)
				SET @maior = @n2
			IF (@n3 > @maior)
				SET @maior = @n3
			
			IF (@n2 < @menor)
				SET @menor = @n2
			IF (@n3 < @menor)
				SET @menor = @n3
				
			PRINT 'MAIOR VALOR ' + CONVERT(CHAR(3), @maior)
			PRINT 'MENOR VALOR ' + CONVERT(CHAR(3), @menor)
		END
			
--C) Fazer um algoritmo que calcule os 15 primeiros termos da série
-- 1,1,2,3,5,8,13,21,...
			
DECLARE @cont AS INT,
		@fb AS INT,
		@aux1 AS INT,
		@aux2 AS INT
		SET @cont = 1
		SET @fb = 0
		SET @aux1 = 0
		SET @aux2 = 1
		WHILE(@cont <= 15)
		BEGIN
			SET @aux1 = @aux2
			SET @aux2 = @fb
			SET @fb = @aux1 + @aux2		
			PRINT @fb
			SET @cont = @cont + 1;
		END

--D) Fazer um algoritmo que separa uma frase, 
--colocando todas as letras em maiúsculo e em minúsculo (Usar funções UPPER e LOWER)
	
DECLARE @frase AS VARCHAR(100)
	SET @frase = 'Uma Frase qualquer'
		PRINT UPPER(@frase)
		PRINT LOWER(@frase)
		
		
--E) Fazer um algoritmo que inverta uma palavra (Usar a função SUBSTRING)

DECLARE @palavra AS VARCHAR(100)
		SET @palavra = 'SUBI NO ONIBUS'
		PRINT REVERSE(@palavra)

		
SELECT REVERSE('uma frase aqui')