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
define('AUTH_KEY',         'WwvP63tBbAhi+57aYNcMlIh+/uZgu2nhrMjhFO3Fymxo8Kqflyka9JxTX2BtSUCm5lspZr+2F4ibG5ot0Pldpg==');
define('SECURE_AUTH_KEY',  'U8G4tQOnPjc4y0oMTIs6BxEBowzbZbH7o5FM+oJnl5y0quMyv0zaYYd1MWTGq/HJ6S0rnMT8nX7WqbA0Uuuthg==');
define('LOGGED_IN_KEY',    'jOBhzW5r1PsKeOLCgvD/O9CqmiLX5HTa6MF8SQ8gu5ARrsGLALxUrfdBY2srzKH9EjXD7Ohcfn731+tLzdRO0g==');
define('NONCE_KEY',        '+zmfIfAiEM7WK4JpAHPSoVK2x45DXmwUQK0m9Ds/PrTSEzvW9Mc9pGaqDVZ8BaHHxcnmgrYulY7i1RAnHQdHwA==');
define('AUTH_SALT',        '8rv7IKNGVRUf5MYVvXujymRDtUawwdjtecMjjJv6nEGfbeppumXRGsHNo0Aoc3eB6PDe5+hjUkWvrsu+ANY4dw==');
define('SECURE_AUTH_SALT', 'aWinb0y8ygqJAN6IibBCxwKrQDUDeHLHgnjf/xplzanAyBsMx7R0iIC1DdTgPPp9kiqMU9EfOQnDCx584yEeIQ==');
define('LOGGED_IN_SALT',   'sZ+k7uVs2AivnoV7IbPcViuu0Ggrjf+/cjvUtUKo+bNflLCmcA5i4XFb0aoFEFUnVa57wXgoirBQgFzffvXCqQ==');
define('NONCE_SALT',       'XL/AeaTOt3b+vHPkelA5+JIAg7HjKyxoj5kZTEijQxAY6m7Obp1Yrx77UCMtFw0bYt/gc+4XB+uz7IbI4kpQ7Q==');

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
