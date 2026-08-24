create table if not exists public.purchases (
id uuid primary key, product text not null, category text, store text,
qty numeric not null default 1, price numeric not null default 0,
rate numeric not null default 0, subtotal numeric not null default 0,
tax numeric not null default 0, total numeric not null default 0,
date date not null, notes text
);
alter table public.purchases enable row level security;
grant select, insert, update, delete on public.purchases to anon;
drop policy if exists "prototype read purchases" on public.purchases;
drop policy if exists "prototype insert purchases" on public.purchases;
drop policy if exists "prototype update purchases" on public.purchases;
drop policy if exists "prototype delete purchases" on public.purchases;
create policy "prototype read purchases" on public.purchases for select to anon using (true);
create policy "prototype insert purchases" on public.purchases for insert to anon with check (true);
create policy "prototype update purchases" on public.purchases for update to anon using (true) with check (true);
create policy "prototype delete purchases" on public.purchases for delete to anon using (true);
