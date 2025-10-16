import { useStorage } from "../hooks/useStorage";
import type { NavigationItem } from "../utils/navigation";

interface FileOrFolderProps {
	item: NavigationItem;
	currentPath: string;
	path: string;
	level?: number;
}

const FileOrFolder: React.FC<FileOrFolderProps> = ({
	item,
	currentPath,
	path,
	level = 0,
}) => {
	const expanded = item.active;

	const indentStyle = { paddingLeft: `${level * 16}px` };

	if (!item.children || item.children.length === 0) {
		// File
		return (
			<li>
				<a
					href={item.path}
					className={`
            block px-3 py-2 text-sm font-medium transition-colors duration-150
            ${item.active
							? "bg-blue-50 text-blue-700 border-l-4 border-blue-500"
							: "text-gray-700 border-l-4 border-transparent saturate-20 hover:border-amber-100"
						}
          `}
					style={indentStyle}
				>
					{item.title}
				</a>
			</li>
		);
	}

	// Folder
	return (
		<li>
			<div className="mb-1">
				<button
					type="button"
					onClick={() => {
						if (item.path && item.path !== currentPath) {
							window.location.href = item.path;
						}
					}}
					className={`
            flex items-center w-full px-3 py-2 text-sm font-medium text-left transition-colors duration-150
            ${item.active
							? "text-blue-700 bg-blue-50"
							: "text-gray-700"
						}
          `}
					style={indentStyle}
					aria-expanded={expanded}
					aria-label={`${expanded ? "Collapse" : "Expand"} ${item.title} folder`}
				>
					<svg
						className={`w-4 h-4 mr-2 transition-transform duration-200 ${expanded ? "transform rotate-90" : ""
							}`}
						fill="none"
						stroke="currentColor"
						viewBox="0 0 24 24"
						aria-hidden="true"
					>
						<path
							strokeLinecap="round"
							strokeLinejoin="round"
							strokeWidth={2}
							d="M9 5l7 7-7 7"
						/>
					</svg>
					<span className="flex-1">{item.title}</span>
				</button>

				{expanded && (
					<ul className="mt-1 space-y-1">
						{item.children.map((child, index) => (
							<FileOrFolder
								key={`${child.path}-${index}`}
								item={child}
								currentPath={currentPath.replace(/\/$/, '')}
								path={`${path}/${child.title}`}
								level={level + 1}
							/>
						))}
					</ul>
				)}
			</div>
		</li>
	);
};


export default FileOrFolder;
