REDMINE_WIKI_TAGS = [
  'redmine_wiki_tags/patches/wiki_page_patch',
  'redmine_wiki_tags/patches/wiki_content_patch',
  'redmine_wiki_tags/patches/wiki_controller_patch',
  'redmine_wiki_tags/patches/wiki_helper_patch'
  ]

base_url = File.dirname(__FILE__)
REDMINE_WIKI_TAGS.each { |file| require(base_url + '/' + file) }

module RedmineWikiTags
end
