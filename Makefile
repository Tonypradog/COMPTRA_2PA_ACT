all: bi fle co


bi:
			bison -d Simple.y
co:
			gcc -c Simple.tab.c
			gcc -c lex.yy.c
			gcc -o Simple Simple.tab.o lex.yy.o -lm
fle:
			flex Simple.lex
test:
			./Simple test_simple
clean:
		rm lex.yy.c
		rm Simple.tab.c
		rm Simple.tab.h
		rm Simple
		rm Simple.tab.o
		rm lex.yy.o
