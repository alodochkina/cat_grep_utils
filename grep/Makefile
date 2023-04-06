FLAGS = -Wall -Werror -Wextra -std=c11
GREP_C = s21_grep_files.c s21_grep_flags.c
GREP_O = s21_grep_files.o s21_grep_flags.o

all: s21_grep
rebuild: clean s21_grep
clean:
	rm -rf *.out *.o *.a s21_grep
s21_grep: s21_grep.a
	gcc $(FLAGS) s21_grep.c -L. -ls21_grep -o s21_grep
s21_grep.a: s21_grep.o
	ar rc libs21_grep.a $(GREP_O)
	ranlib libs21_grep.a
s21_grep.o:
	gcc $(FLAGS) -c $(GREP_C)
test: s21_grep
	./grep_test.sh
