# sed substitution
- echo 'hello world' | sed s/hello/bye/
- echo 'hello world, bye world' | sed s/world/peopel/g
substitutions in line
- echo 'Beverly Hills 90210' | sed -E s/[0-9]{3}/q/
extended regular expressions
- echo 'Beverly Hills 90210' | sed -E 's/([0-9]+)/I love \1 a lot/'
regex capturing groups and backreferences

