# Unhandled Exception in Asynchronous Dart Function

This repository demonstrates a common error in Dart asynchronous programming:  insufficient exception handling in an asynchronous operation. The `fetchData` function fetches data from an API and uses a `try-catch` block, however the current exception handling is minimal.  The solution demonstrates improved error handling for production-ready code.

## Bug

The original `fetchData` function only prints the error message. This isn't robust enough for a production application, as it could lead to application crashes or unexpected behavior.  There is also no mechanism to retry the request or alert the user in a friendly way.

## Solution

The solution shows how to improve the error handling in several ways: more informative error messages, a retry mechanism, and potentially user-facing feedback (although that part is omitted for brevity).