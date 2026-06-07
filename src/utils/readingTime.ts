/**
 * Estimates reading time for a post.
 * @param body - The raw markdown/MDX body string
 * @returns A string like "4 min read"
 */
export function getReadingTime(body: string): string {
	const wordsPerMinute = 200;
	// Strip frontmatter, HTML tags, and markdown syntax for a rough word count
	const cleaned = body
		.replace(/^---[\s\S]*?---/, '')   // strip frontmatter
		.replace(/<[^>]+>/g, ' ')          // strip HTML
		.replace(/[#*`~_[\]()>!]/g, ' ');  // strip markdown symbols
	const words = cleaned.trim().split(/\s+/).filter(Boolean).length;
	const minutes = Math.max(1, Math.round(words / wordsPerMinute));
	return `${minutes} min read`;
}