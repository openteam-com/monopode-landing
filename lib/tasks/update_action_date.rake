namespace :action_date do
  desc "Обновление даты акции"
  task :update => :environment do
    description = MetaDescription.first
    if description.action_date_day - Time.zone.now.day < 2
      MetaDescription.first.update_attribute :action_date_day, Random.rand(20)
    end
  end
end
