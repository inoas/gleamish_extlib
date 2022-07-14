export function unix_timestamp() {
	return Math.floor(new Date().getTime() / 1000);
};
