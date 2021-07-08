<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'ZFQ/b9vzNsIQWNxkxLgnpHN8qBGwtJXR/yUyy3f2yUSuGs9QE+pD+SABgo0WgdMbrvjRue0MkrW6pJeMb3KA7g==');
define('SECURE_AUTH_KEY',  'cLu9qEu/kWVpn7kkQo7ncC+mMPfAWfis8GWz/strMaPa1uYpX+oTHPRmZu4DjJ4UWSpxVA/MkG0SIfvFIYrnrQ==');
define('LOGGED_IN_KEY',    'XBMp2PYDyf82XGwLpwGII4dCyilgQW/sfjCu3Z9xRtk+8PJiU1Zd9vWK3jLAFuxFgfBvZfa36S7fo/nl+Jwxtg==');
define('NONCE_KEY',        'O+H1w+YihLTIvRcgXafCnEvAHhhdADil9+Vp8m04wrSiOtAdxAh6RFZY2dJjXL1E5UkKbOjGVQpANvWW+kpmbA==');
define('AUTH_SALT',        '5U+NW6EW+vINyQFtk/tuzVUcFdfAxNkrzcfIW1H81xaMg7Z9FqLsSGAhpvIhIGAfPBCf8dLpQ9o26LcRhEB9RA==');
define('SECURE_AUTH_SALT', 'CZloNax6MK+pxzxoj7rLo6jCZyzpOVmVu3BjkbUjAZQDMJg1KsrNfXkw0rmwK6TShjeCOvgs7UZAY4jqBgBD2w==');
define('LOGGED_IN_SALT',   '3SuirxS+h6Dkk756vydneZYSvqSNoOysq5lx8VDwXIdYqIs/2u/piiIFr9JRmHYDdXZ/DMTkmCTJOcqQxvX6FA==');
define('NONCE_SALT',       'f6a3/xzUCmZUObIG5idFwKjZybCaw8FHw2d/R1XYGOye6sHUptHojjG5dTxvFqn/UOWdv28cA8SCBSrWhvHO0Q==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
