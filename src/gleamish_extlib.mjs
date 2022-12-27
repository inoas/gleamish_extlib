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

function operating_system_name() {
	const os = require('os');
	return os.platform();
};

function operating_system_version() {
	const os = require('os');
	return os.release();
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

export function array_map(arr, fn) {
	return arr.map(fn);
};

export function array_reduce(arr, acc, fn) {
	return arr.reduce(fn, acc);
};

export function array_reduce_right(arr, acc, fn) {
	return arr.reduceRight(fn, acc);
};

export const is_browser =
	typeof window !== "undefined" && typeof window.document !== "undefined";

export const is_nodejs =
	typeof process !== "undefined" &&
	process.versions != null &&
	process.versions.node != null;

export const is_deno =
	typeof Deno !== "undefined" &&
	typeof Deno.version !== "undefined" &&
	typeof Deno.version.deno !== "undefined";

export const is_web_worker =
	typeof self === "object" &&
	self.constructor &&
	self.constructor.name === "DedicatedWorkerGlobalScope";

/**
 * @see https://github.com/jsdom/jsdom/releases/tag/12.0.0
 * @see https://github.com/jsdom/jsdom/issues/1537
 */
export const has_dom =
	(typeof window !== "undefined" && window.name === "nodejs") ||
	(typeof navigator !== "undefined" &&
		(navigator.userAgent.includes("Node.js") ||
			navigator.userAgent.includes("jsdom")));
