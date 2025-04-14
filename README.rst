csv2xls
==========

**csv2xls** is a Perl script to convert Convert CSV files to Excel.

csv2xls reads data from CSV files into individual sheets of a workbook,
while applying formatting options specified as arguments.

Formatting allowed:
* Text formatting: numeric formats, bold, underline, italic, alignment, colors, size, fonts
* Sheet formatting: freezing panes, splitting panes, show/hide grid lines, autofit, autofilter.

It requires the module `Excel::Writer::XLSX <https://metacpan.org/pod/Excel::Writer::XLSX>`_ module, and optionally `Text::CSV::Separator <https://metacpan.org/pod/Text::CSV::Separator>`_.

Here is a simple example:

.. code-block:: bash

    csv2xls \
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

With `t/test1.csv <https://raw.github.com/lameventanas/csv2xls/master/t/test1.csv>`_:

.. code-block:: text
   :linenos:

    Date	Group	Debit	Credit	Balance	Description
    2022-01-05	Credit Card	5000		1513500	Groceries
    2022-01-07	Transfer		21000	1534500	
    2022-01-15	Services	9152		1525348	Electricity
    2022-01-22	Credit Card	94331		1431017	Credit card payment
    2022-01-23	Miscellaneous	30000		1401017	ATM withddrawal
    2022-01-25	Services	3552		1397465	Water
    2022-01-31	Salary Income		841513	2238978	Salary
    2022-02-01	Credit Card	8425		2230553	Groceries

.. image:: https://raw.github.com/lameventanas/csv2xls/master/t/test1.png

See the `full documentation <https://github.com/lameventanas/csv2xls/blob/main/csv2xls.rst>`_.
