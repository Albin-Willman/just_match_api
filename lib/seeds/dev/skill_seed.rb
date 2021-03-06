# frozen_string_literal: true
require 'seeds/base_seed'

module Dev
  class SkillSeed < BaseSeed
    def self.call
      max_skills = max_count_opt('MAX_SKILLS', 30)

      language = Language.find_by!(lang_code: 'en')

      log_seed(Skill) do
        max_skills.times do |n|
          Skill.create!(name: "#{Faker::Name.title} #{n}", language: language)
        end
      end
    end
  end
end
