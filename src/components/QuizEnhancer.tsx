import React, { useEffect } from "react";


const QuizEnhancer = ({ quizId }: { quizId: string }) => {
	useEffect(() => {
		document.querySelectorAll("a#email").forEach((a) => {
			const emailLink = a as HTMLAnchorElement;
			emailLink.href =
				"mailto:g.a.bucher@midasum.com?subject=feature-space.com";
			emailLink.innerHTML = "g.a.bucher@midasum.com";
		});
	}, []);

	return null;
};

export default QuizEnhancer;
