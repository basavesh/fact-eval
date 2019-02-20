This repository contains the ported code for the case studies in the FaCT paper,
as well copies of each cryptographic library for the purposes of
benchmarking. The directory already contains pre-built object files and
assembly files for each case study, built for a 64-bit Ubuntu environment. If
you would like to rebuild the files yourself, you can follow the instructions
below to rebuild them from the FaCT source files.

To rebuild the FaCT implementations, first configure your environment:
`export FACTC='/path/to/factc'` . Then, from the `fact-eval`
directory, run `make generate` . This will recompile the FaCT source files
for each case study.

To run the benchmarks, run `make bench` from the `fact-eval` directory. This
will compile each case study, run their respective benchmarking suites, and
compile the results into a file called `results`.

To evaluate the case studies using dudect, you must first build the test
frameworks for each case study. First, if you haven't already run the
benchmarks, run `make compile` from the `fact-eval` directory. Then change to
the `fact-eval/dudect` directory and run `make all` to build the test
frameworks. The evaluation procedure simply consists of allowing each binary to
run for a suitably large number of sample sizes, and checking that the output
continues to report, "For the moment, maybe constant time." The provided helper script,
`run-all-10m.sh`, will run each test framework for 10 minutes while capturing
output, as a convenience.
