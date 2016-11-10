# 1000pushups

Coding Katas are a nice way to get your flow back from a coding slump.
While the general idea is to reimplement the same idea or solve the same
exercise from scratch, what If I start comparing my different
reimplementations just for the fun of it.

Sometimes measuring for some bike-shedding practices, like lines of code; while
in other occasions simply by benchmarking by execution time.

So this is a try at testing/benchmarking/measuring all those katas.

# Setup

The following command assumes that you have a working
[Homebrew](http://brew.sh) installation with XCode CLI utilities.

```
# On your prompt
bin/setup
```

# Requirements
The setup script will require and/or install the following dependencies

 - Ruby
 - Haskell (For `bench` tool, until there is a bottled version in *Homebrew*,
   you may experience a "slow" setup, mainly because of the initial Haskell
   stack setup, on the bright side, you may want to try learning Haskell, it
   seems FP is cool these days.)



# Usage

## Run all KPI and vanity metrics on katas
```
rake
```


## Run all KPI and vanity metrics on katas
```
rake benchmark
```

