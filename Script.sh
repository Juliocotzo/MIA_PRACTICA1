echo

echo  "\e[31mCARGA MASIVA:"

echo  "\e[32mScript de eliminación de tablas."
mysql -u Administrador -p/Admin1234 < drop_table.sql

echo
echo  "\e[32mScript de creación de base de datos."
mysql -u Administrador -p/Admin1234 < schema.sql

echo
echo  "\e[32mScript de tablas temporales."

mysql -u Administrador -p/Admin1234 < create_temp.sql

echo
echo  "\e[32mArchivos de control"

mysql -u Administrador -p/Admin1234 < insert_country_code_temp.sql
mysql -u Administrador -p/Admin1234 < insert_geoname_temp.sql
mysql -u Administrador -p/Admin1234 < insert_level_1a_temp.sql
mysql -u Administrador -p/Admin1234 < insert_location_temp.sql
mysql -u Administrador -p/Admin1234 < insert_project_temp.sql
mysql -u Administrador -p/Admin1234 < insert_transaction_temp.sql

echo
echo  "\e[32mScript de llenado de base de datos."
mysql -u Administrador -p/Admin1234 < insert_schema.sql

echo
echo  "\e[32mTOTAL DATOS"
echo  "\e[97m"
mysql -u Administrador -p/Admin1234 < datos.sql

echo  "\e[31mCONSULTAS:"

echo  "\e[32m1. ¿Cuántos proyectos iniciaron en el 2011?"
echo  "\e[97m"
mysql -u Empleado -p/Emp1234 < consulta1.sql
echo
echo  "\e[32m2. ¿Cuál fue el proyecto de mayor duración?"
echo  "\e[97m"
mysql -u Empleado -p/Emp1234 < consulta2.sql
echo
echo  "\e[32m3. ¿Cuál fue el proyecto de menor duración?"
echo  "\e[97m"
mysql -u Empleado -p/Emp1234 < consulta3.sql
echo
echo  "\e[32m4. Top 5 de países con más proyectos asignados"
echo  "\e[97m"
mysql -u Empleado -p/Emp1234 < consulta4.sql
echo
echo  "\e[32m5. Top 5 de países con menos proyectos asignados"
echo  "\e[97m"
mysql -u Empleado -p/Emp1234 < consulta5.sql
echo
echo  "\e[32m6. ¿Cuál fue el proyecto con más costo?"
echo  "\e[97m"
mysql -u Empleado -p/Emp1234 < consulta6.sql
echo
echo  "\e[32m7. ¿Cuál fue el proyecto menos costoso?"
echo  "\e[97m"
mysql -u Empleado -p/Emp1234 < consulta7.sql
echo
echo  "\e[32m8. Top 5 de proyectos más costosos"
echo  "\e[97m"
mysql -u Empleado -p/Emp1234 < consulta8.sql
echo
echo  "\e[32m9. Costo Total de Todos los Proyectos"
echo  "\e[97m"
mysql -u Empleado -p/Emp1234 < consulta9.sql
echo
echo  "\e[32m10. Top 3 de las Transacciones más Costosas RI-East Africa Public Health Laboratory Networking Project"
echo  "\e[97m"
mysql -u Empleado -p/Emp1234 < consulta10.sql
echo
