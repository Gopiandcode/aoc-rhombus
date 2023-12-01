# AOC in Rhombus

Let's take this thing for a ride. 


It toook me friggen ages to even do day 1... The literal easiest....:

```
def result_day2:
  for values(sum=0) (str: lines):
    def digits: String.numeric_digits(str)
    def first_digit:
       def values(i, digit): String.index_of_first_digit(str)
       for values(min_digit=digit):
           each Pair(st, digit): digits
           break_when i < st
           final_when st < i
           values(digit)

    def last_digit:
       def values(i, digit): String.index_of_last_digit(str)
       for values(max_digit=digit):
           each Pair(st, digit): digits
           skip_when st < i
           values(digit)

    sum + String.to_number(first_digit +& last_digit)
```


Want to refactor and clean up the code...
