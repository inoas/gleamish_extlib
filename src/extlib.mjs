export function unix_timestamp() {
	return Math.floor(new Date().getTime() / 1000);
};

export function operating_system() {
	if (typeof navigator !== 'undefined') {
		return navigator.userAgent;
	}
	return `${operating_system_name()} ${operating_system_version()}`;
};

function operating_system_name() {
	const os = require('os');
	return os.platform();
};

function operating_system_version() {
	const os = require('os');
	return os.release();
};
