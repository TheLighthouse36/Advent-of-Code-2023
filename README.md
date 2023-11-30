# Advent-of-Code-2023
An elixir based attempt at Advent of Code 2023

This year I am going to use Elixir as my language of choice. My goal is to get to atleast day 10, but we will see how far we get. 

The general structure of the days is that for each day there will be and .exs (elixir script) file and an input file. in the .exs file there will be a module that contains most of the code for the day and two pipelines ending in an Inspect for the two days. Unless the problem is trivial enough that it can just be solved with just a pipeline. I will also add comments and a readme, to help explain my solution and why I did it.

Here are some rules that I am using to guide my solutions:
1. No third party libraries or packages. The exceptions are the Elixir stdlib, Erlang stdlib, Kino, and NX. Kino for working with Livebook, and NX because without it working with matrices is an...unpleasent..experience.
2. The input file must be parsed in full, no copying and pasting part of it. This isn't because I think it's cheating if you do, it just makes the files more consistent.

Let's have fun!
