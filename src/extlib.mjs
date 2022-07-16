import { Ok, Error, toList } from "./gleam.mjs";

const Nil = undefined;

export function unix_timestamp() {
	return Math.floor(new Date().getTime() / 1000);
};

export function operating_system() {
	if (typeof navigator !== 'undefined') {
		return navigator.userAgent;
	}
	return `${operating_system_name()} ${operating_system_version()}`;
};

export function array_new() {
	let arr = [];
	return arr;
};

export function array_from_list(list) {
	let arr = list.toArray();
	return arr;
};

export function array_to_list(arr) {
	return toList(arr);
};

export function array_set(arr, idx, val) {
	arr[idx] = val;
	return arr;
};

export function array_get(arr, idx) {
	return idx in arr ? new Ok(arr[idx]) : new Error(Nil);
};

export function array_size(arr) {
	return arr.length;
};

export function array_count(arr) {
	return arr.reduce(function (acc, val) { return val ? acc + 1 : acc; }, 0);
};

function operating_system_name() {
	const os = require('os');
	return os.platform();
};

function operating_system_version() {
	const os = require('os');
	return os.release();
};

