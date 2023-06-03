Redmine::Plugin.register :redmine_wiki_tags do
  name 'Redmine Wiki Tags plugin'
  author 'RedmineUP'
  description 'Adds tags for wiki pages'
  version '0.0.1'
  url 'https://redmineup.com'
  author_url 'mailto:support@redmineup.com'
  requires_redmine version_or_higher: '5.0.5'
end

require File.dirname(__FILE__) + '/lib/redmine_wiki_tags'
