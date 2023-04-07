#!/bin/bash

test1_file=./test.file
test2_file=./text.file
test3_file=../cat/text.txt

success_tests=0
fail_tests=0

#  Test1

  echo "Test1: grep test.file text.file"

  grep_result=$(grep $test1_file $test2_file)
  s21_grep_result=$(./s21_grep $test1_file $test2_file)

#  echo "Grep result: $grep_result"
#  echo "s21_grep result: $s21_grep_result"

  if [ "$grep_result" = "$s21_grep_result" ];
  then echo "Success"
  success_tests=$((success_tests + 1))
  else echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi


#  Test2

  echo "Test2: grep _grep test.file text.file"

  grep_result=$(grep _grep $test1_file $test2_file)
  s21_grep_result=$(./s21_grep _grep $test1_file $test2_file)

#  echo "Grep result: $grep_result"
#  echo "s21_grep result: $s21_grep_result"

  if [ "$grep_result" = "$s21_grep_result" ];
  then echo "Success"
  success_tests=$((success_tests + 1))
  else echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

#  Test3

  echo "Test3: grep -e Cat test.file text.file"

  grep_result=$(grep -e Cat $test1_file $test2_file)
  s21_grep_result=$(./s21_grep -e Cat $test1_file $test2_file)

#  echo "Grep result: $grep_result"
#  echo "s21_grep result: $s21_grep_result"

  if [ "$grep_result" = "$s21_grep_result" ];
  then echo "Success"
  success_tests=$((success_tests + 1))
  else echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

#  Test4

  echo "Test4: grep -i Au test.file text.file"

  grep_result=$(grep -i Au $test1_file $test2_file)
  s21_grep_result=$(./s21_grep -i Au $test1_file $test2_file)

#  echo "Grep result: $grep_result"
#  echo "s21_grep result: $s21_grep_result"

  if [ "$grep_result" = "$s21_grep_result" ];
  then echo "Success"
  success_tests=$((success_tests + 1))
  else echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

#  Test5

  echo "Test5: grep -v le test.file text.file"

  grep_result=$(grep -v le $test1_file $test2_file)
  s21_grep_result=$(./s21_grep -v le $test1_file $test2_file)

#  echo "Grep result: $grep_result"
#  echo "s21_grep result: $s21_grep_result"

  if [ "$grep_result" = "$s21_grep_result" ];
  then echo "Success"
  success_tests=$((success_tests + 1))
  else echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

#  Test6

  echo "Test6: grep -c t test.file text.file"

  grep_result=$(grep -c \| $test1_file $test2_file)
  s21_grep_result=$(./s21_grep -c \| $test1_file $test2_file)

#  echo "Grep result: $grep_result"
#  echo "s21_grep result: $s21_grep_result"

  if [ "$grep_result" = "$s21_grep_result" ];
  then echo "Success"
  success_tests=$((success_tests + 1))
  else echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

#  Test7

  echo "Test7: grep -l 3 test.file text.file text.txt"

  grep_result=$(grep -l 3 $test1_file $test2_file $test3_file)
  s21_grep_result=$(./s21_grep -l 3 $test1_file $test2_file $test3_file)

#  echo "Grep result: $grep_result"
#  echo "s21_grep result: $s21_grep_result"

  if [ "$grep_result" = "$s21_grep_result" ];
  then echo "Success"
  success_tests=$((success_tests + 1))
  else echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

#  Test8

  echo "Test8: grep -n : test.file text.file"

  grep_result=$(grep -n : $test1_file $test2_file)
  s21_grep_result=$(./s21_grep -n : $test1_file $test2_file)

#  echo "Grep result: $grep_result"
#  echo "s21_grep result: $s21_grep_result"

  if [ "$grep_result" = "$s21_grep_result" ];
  then echo "Success"
  success_tests=$((success_tests + 1))
  else echo -e "Fail\n"
  fail_tests=$((fail_tests + 1))
  fi

  echo "Success test: $fail_tests"
  echo "Fail test: $success_tests"