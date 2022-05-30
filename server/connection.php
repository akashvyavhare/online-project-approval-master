<?php
/**
 * A class used to connect to the database. We are not creating multiple concurrent connections to the database.
 */
    class Connection {

        protected static $connection = null;

        public static function getConnection() {

            if ( self::$connection instanceof mysqli ) {
                return self::$connection;
            }

            $hostName = getenv('DB_HOST') ? getenv('DB_HOST') : 'localhost';
            $userName = getenv('DB_USER') ? getenv('DB_USER') : 'root';
            $password = getenv('DB_PASSWORD') ? getenv('DB_PASSWORD') : null;
            $dbName   = getenv('DB_NAME') ? getenv('DB_NAME') : null;

            $conn = new mysqli($hostName, $userName, $password, $dbName);
            if ($conn->connect_error) {
                die("Database connection failed due to: " . $conn->connect_error);
            } else {
                self::$connection = $conn;
            }
            return $conn;
        }

        /**
         * Close connection after use.
         *
         * @return void
         */
        public static function closeConnection() {
            if ( self::$connection instanceof mysqli ) {
                self::$connection->close();
            }
        }
    }

?>