delimiter $$
create procedure show_bike(IN m varchar(20),OUT p int,OUT c varchar(20))
Begin
select bprise,bcolour into p,c from bike where bmodel = m;
end $$
delimiter ;
