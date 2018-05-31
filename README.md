# robot framework project (with selenium)
Simple test in Robot Framework which uses Selenium2Library.
It tests registration form on yahoo.com.

Test case: Trying to register a new account with invalid user name.

Enviroment: OS - Ubuntu 17.10 (64-bit), browser - Firefox Quantum 59.0.2 (64-bit)

Preconditions:
Browser open on page "https://www.yahoo.com". No user signed in.

Steps:
1. Open https://www.yahoo.com
    (1a. On temporary page about RODO click "Agree")
     1b. On main page yahoo.com click "Sign in".
2. Click "Sign up".
3. In the "First name" field put valid name e.g. Joanna.
4. In the "Last name" field put valid last name e.g. Pasek.
5. In the "Email address" field put an user name including some unallowable characters e.g. joanna$$$.
6. In the "Password" field put valid password.
7. From drop-down list of country codes choose a code e.g. Poland (+48).
8. In the "Moblie phone number" field put valid phone number e.g. 789789789.
9. From the "Birth Month" drop-down list choose some month.
10. In the "Day" field put valid month's day.
11. In the "Year" field put valid year.
12. From the "Gender" drop-down list choose gender e.g. Female.
13. Click "Continue".

Expecting results:
Registration fail.
Under the "Email Address" field appears following statement: "You can only use letters, numbers, periods (‘.’), and underscores (‘_’) in your username."
