import { useState } from 'react';

function getValue<T>(key: string, defaultValue: T): T {
  if (typeof window === 'undefined') return defaultValue;
  
  const v = localStorage.getItem(key);
  if (typeof v !== 'string') {
    return defaultValue;
  }
  try {
    return JSON.parse(v);
  } catch {
    return defaultValue;
  }
}

export function useStorage<T>(key: string, initialValue: T): [T, (v: T) => void] {
  const [value, setValue] = useState(() => getValue(key, initialValue));
  
  function set(v: T) {
    if (typeof window !== 'undefined') {
      localStorage.setItem(key, JSON.stringify(v));
    }
    setValue(v);
  }
  
  return [value, set];
}