delimiter $$
create procedure wait(IN a varchar(20))
Begin
declare b int;
select bprise into b from bike where bmodel = a;
if b < 100000 then
update bike set bwatime = "no waiting" where bmodel = a;

elseif b > 100000 AND b < 200000 then
update bike set bwatime = "30 days" where bmodel = a;

elseif b > 200000 AND b < 300000 then
update bike set bwatime = "60 days" where bmodel = a;

elseif b > 300000 then
update bike set bwatime = "40 days" where bmodel = a;

end if;
end $$
delimiter ;
