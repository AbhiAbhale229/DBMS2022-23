clear 
echo " bmodel  | bcolour | bprise | bwatime   "
read bm
read bc
read bp
read bw
echo "use SHMS" > inse.sql
echo "insert into bike values ('$bm' , '$bc' , '$bp' , '$bw') ;" >>  inse.sql
echo "data inserted"
echo "select * from bike ; " >> inse.sql
sudo mysql -u root < inse.sql
echo "done"
