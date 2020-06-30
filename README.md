# Introduction

RANDy RGWLR ("Random Generator With Limited Randomness") is a batch file script which 
generates random numeric integer values within a certain definable range and limits the 
occurrence of each value to a specific number.It is also possible to give every single 
value its own title if necessary.

It works in "cycles" which means e.g. if a number has reached its limit it will not 
return before the "round" has ended. A cycle is defined by the sum of each value's 
repetition limit.

# Requirements

This batch file works on Microsoft Windows Vista/7/8/10.
Since it's a .bat file it can't be run on any other operating system than Microsoft Windows.

# Versions

The "standard" version has a pre-defined repetition limit of 2 per value. So each number
will only occur in a cycle twice.

The "expert" version has a feature to manually set the repetition limit to an arbitrary
value. So each number will occur in a cycle with user-defined times.

# Changelog

1.0.0.1:
- Changed key assignments

1.0.0.0:
- Initial release
