use strict;
use warnings;
use Test::More tests => 2;

my $cmd = << 'EOL'
blib/script/csv2xls \
    --autofit-factor=1.7,0.5 \
    --sheet1-name='My Transactions' \
    --sheet1-freeze-panes=1,0 \
    --sheet1-grid-lines=none \
    --sheet1='autofit autofilter num_format=#,##0 font="DejaVu Sans Mono" size=10 bg_color=#e0e0e0 border=1' \
    --sheet1-/Date/:a9999=color=orange \
    --sheet1-/Debit/:c9999=color=red \
    --sheet1-/Credit/:d9999=color=green \
    --sheet1-/Balance/:e9999=color=blue \
    --sheet1-a1:/Description/='bold color=white bg_color=gray' \
    --csv=t/test1.csv \
    --xls=t/test1.xlsx
EOL
;

# strip lines, remove newlines, merge them into single string
$cmd = join(' ', map { s{^\s+}{}r } split(/\s+\\\n/, $cmd));

diag("\nRunning: $cmd\n");

ok(system($cmd) == 0, 'argument parsing');

ok(-r 't/test1.xlsx', 'output file produced');
