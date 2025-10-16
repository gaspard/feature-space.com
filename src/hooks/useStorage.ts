import { useState, useEffect, useCallback } from "react";

function getValue<T>(key: string, defaultValue: T): T {
	if (typeof window === "undefined") return defaultValue;

	const v = localStorage.getItem(key);
	if (typeof v !== "string") {
		return defaultValue;
	}
	try {
		return JSON.parse(v);
	} catch {
		return defaultValue;
	}
}

export function useStorage<T>(
	key: string,
	initialValue: T,
): [T, (v: T) => void] {
	const [value, setValue] = useState(initialValue);
	const [isHydrated, setIsHydrated] = useState(false);

	useEffect(() => {
		setIsHydrated(true);
		setValue(getValue(key, initialValue));
	}, [key, initialValue]);

	function set(v: T) {
		if (typeof window !== "undefined") {
			localStorage.setItem(key, JSON.stringify(v));
		}
		setValue(v);
	}

	return [isHydrated ? value : initialValue, set];
}

export function useQuizStorage(quizId: string) {
	if (typeof window === "undefined") {
		return [{} as Record<string, boolean>, () => { }, () => { }] as const;
	}
	const getQuiz = useCallback(() => {
		const v = localStorage.getItem(quizId);
		if (typeof v !== "string") {
			return {};
		}
		return JSON.parse(v);
	}, [quizId]);
	const [quiz, setQuiz] = useState<Record<string, boolean>>(getQuiz());
	const setValue = (key: string, value: boolean) => {
		const quiz = getQuiz();
		quiz[key] = value;
		localStorage.setItem(quizId, JSON.stringify(quiz));
		setQuiz(quiz);
	}
	const resetQuiz = () => {
		setQuiz({});
		localStorage.removeItem(quizId);
	}
	return [quiz, setValue, resetQuiz] as const;
}