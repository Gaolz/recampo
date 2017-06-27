module ApplicationHelper
    def format_post(content)
        sanitize(markdown(content),
                    tags: %w(p br img h1 h2 h3 h4 blockquote pre code strong em a ul ol li span),
                    attributes: %w(href src title alt target rel))
    end

    def markdown(content)
        renderer = Redcarpet::Render::HTML.new(hard_wrap: true,
                                                                    filter_html: true,
                                                                    link_attributes: { rel: 'nofollow', target: '_blank' })
        markdown = Redcarpet::Markdown.new(renderer,
                                                                autolink: true,
                                                                fenced_code_blocks: true)
        markdown.render(content)
    end
end
