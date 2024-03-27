with first_logins as (
    select 
        A.player_id,
        min(A.event_date) as first_login
        from activity A
        group by A.player_id),
        consec_logins as (
        select
            count(A.player_id) as num_logins
        from
            first_logins F
            inner join activity A on F.player_id = A.player_id
            and F.first_login = date_sub(A.event_date, interval 1 day))

select round(
            (select C.num_logins from consec_logins C)
            / (select count(F.player_id) from first_logins F), 2) as fraction;