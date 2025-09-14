import type { NavigationItem } from "../utils/navigation";
import FileOrFolder from "./FileOrFolder";

interface NavigationProps {
	navigationItems: NavigationItem[];
	currentPath: string;
	isMobile?: boolean;
}

const NavigationReact: React.FC<NavigationProps> = ({
	navigationItems,
	currentPath,
	isMobile = false,
}) => {
	return (
		<nav
			className={`bg-gray-400 shadow-sm border-r border-gray-200 overflow-y-auto ${
				isMobile ? "w-full" : "w-64 min-h-screen hidden md:block"
			}`}
		>
			<div className="pl-3 py-2">
				<h2 className="text-lg font-semibold text-gray-900 mb-4">Navigation</h2>

				<ul className="space-y-1">
					{navigationItems.map((item, index) => (
						<FileOrFolder
							key={`${item.path}-${index}`}
							item={item}
							currentPath={currentPath}
							path={item.title}
							level={0}
						/>
					))}
				</ul>
			</div>
		</nav>
	);
};

export default NavigationReact;
