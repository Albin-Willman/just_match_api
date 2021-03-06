# frozen_string_literal: true
class FrilansFinansImporter
  def self.professions(client: FrilansFinansApi::Client.new)
    FrilansFinansApi::Profession.walk(client: client) do |document|
      document.resources.each do |profession|
        id = profession.id
        category_attributes = {
          name: profession.attributes['title'],
          insurance_status: profession.attributes['insurance_status_id']
        }

        category = Category.find_or_initialize_by(frilans_finans_id: id)
        category.assign_attributes(category_attributes)
        category.save!
      end
    end
  end

  def self.currencies(client: FrilansFinansApi::Client.new)
    FrilansFinansApi::Currency.walk(client: client) do |document|
      document.resources.each do |currency|
        record = Currency.find_or_initialize_by(frilans_finans_id: currency.id)
        record.currency_code = currency.attributes['code']
        record.save!
      end
    end
  end
end
