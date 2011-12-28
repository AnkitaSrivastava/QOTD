dataSource {
    pooled = true
    driverClassName = "org.hsqldb.jdbcDriver"
    username = "sa"
    password = ""
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
}
// environment specific settings
environments {
    development {
        dataSource {
dbCreate = "update"
            driverClassName = "com.mysql.jdbc.Driver"
            url = "jdbc:mysql://localhost/QOTD?zeroDateTimeBehavior=convertToNull&useUnicode=true&characterEncoding=UTF-8&characterSetResults=UTF-8&autoReconnect=true"
            username = "root"
            password = "root123"
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:hsqldb:mem:testDb"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            driverClassName = "com.mysql.jdbc.Driver"
            url = "jdbc:mysql://localhost/QOTD?zeroDateTimeBehavior=convertToNull&useUnicode=true&characterEncoding=UTF-8&characterSetResults=UTF-8&autoReconnect=true"
            username = "root"
            password = "root123"
        }
        }
    }
}
