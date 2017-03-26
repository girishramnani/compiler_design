
out:
	yacc -d parser.y
	lex lex.l
	gcc y.tab.c lex.yy.c -ly -ll
