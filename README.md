# Spring Boot Liquibase

# For Oracle

<changeSet author="your_name" id="create-table-example" context="example">
    <createTable tableName="example_table">
        <column name="is_active" type="NUMBER(1)" defaultValueNumeric="1">
            <constraints nullable="false"/>
        </column>
    </createTable>
</changeSet>

# For MySQL

<changeSet author="your_name" id="create-table-example" context="example">
    <createTable tableName="example_table">
        <column name="is_active" type="TINYINT" defaultValueNumeric="1">
            <constraints nullable="false"/>
        </column>
    </createTable>
</changeSet>

# For PostgreSQL

<changeSet author="your_name" id="create-table-example" context="example">
    <createTable tableName="example_table">
        <column name="is_active" type="BOOLEAN"/>
    </createTable>
</changeSet>


# Cek log in terminal 

SELECT * FROM DATABASECHANGELOG;

- masuk ke terminal mysql, lalu ketikkan perintah diatas

# Setting Database in application.properties

```bash
db.host=10.0.118.4
db.port=1521
db.name=XE
db.username=PARAMETER_MANAGEMENT_SERVICE
db.password=Bsi12345
db.minimum-idle=5
db.maximum-pool-size=30


spring.datasource.url=jdbc:oracle:thin:@${db.host}:${db.port}/${db.name}
spring.datasource.username=${db.username}
spring.datasource.password=${db.password}
spring.datasource.driver-class-name=oracle.jdbc.OracleDriver
spring.jpa.show-sql=false

spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.Oracle12cDialect
spring.jpa.hibernate.ddl-auto=none
spring.jpa.properties.hibernate.jdbc.lob.non_contextual_creation=true
```

- db.username = diganti dengan nama tiap SERVICE

# Catatan

- ID changeSet harus berbeda
- Jika data di table udah dihapus, maka tidak jadi masalah apabila kita menaruh query DELETE INSERT di liquibase
- Kalau changeSet nya sudah di create di DATABASECHANGELOG, maka changeSet tersebut tidak akan dieksekusi lagi. Jika ingin dieksekusi lagi, maka harus ganti changeSet ID
- Kalau mau reset ke changeSet mulai dari ID lama, maka harus di reset di table DATABASECHANGELOG