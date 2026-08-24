PURCHASE TRACKER V4.1

1. In Supabase, open SQL Editor.
2. Run setup.sql completely.
3. Open index.html.
4. Open Cloud.
5. Enter your Project URL.
6. Enter your Publishable Key starting with sb_publishable_.
7. Click Test connection & sync.

V4.1 now validates the URL/key, tests the purchases table, displays the actual
Supabase error, and keeps local storage working if cloud setup fails.

IMPORTANT: setup.sql is for a private prototype. It allows anonymous database
access. For a public multi-user app, use Supabase Auth, a user_id column and
per-user RLS policies. Never put sb_secret_ or service_role keys in the browser.
