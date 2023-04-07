FLAGS = -Wall -Wextra -Werror -std=c11


all: s21_cat
rebuild: clean s21_cat
clean:
	rm -rf *.out *.o *.a s21_cat
s21_cat:
	gcc $(FLAGS) s21_cat.c -o s21_cat
test: s21_cat
	./cat_test.sh
style:
	clang-format -n *.c