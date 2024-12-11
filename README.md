# Unhandled Exception in Dart Asynchronous Function

This repository demonstrates a common error in Dart asynchronous programming: improper exception handling in `async` functions.  The `bug.dart` file shows an example of an `async` function that makes an HTTP request and doesn't properly handle potential exceptions. The `bugSolution.dart` file provides a corrected version with robust exception handling.

## Problem

The `fetchData` function in `bug.dart` attempts to fetch data from an API. If an error occurs during the API call (e.g., network issue, server error), the exception is caught but then immediately re-thrown using `rethrow`.  While this might seem acceptable, it doesn't provide a mechanism to gracefully handle the error within the function, potentially causing the application to crash or behave unexpectedly.