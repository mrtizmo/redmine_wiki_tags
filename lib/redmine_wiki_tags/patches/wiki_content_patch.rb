module RedmineWikiTags
  module Patches
    module WikiContentPatch
      def self.included(base) # :nodoc:
        base.class_eval do
          def self.for_project(project)
            joins(page: :wiki).where(
              wikis: {
                project_id: project.id
              }
            )
                              .pluck(:tags)
                              .flatten
                              .uniq
                              .select(&:present?)
          end
        end
      end
    end
  end
end

unless WikiContent.included_modules.include?(RedmineWikiTags::Patches::WikiContentPatch)
  WikiContent.send(:include, RedmineWikiTags::Patches::WikiContentPatch)
end
