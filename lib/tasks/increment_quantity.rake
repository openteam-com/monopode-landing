namespace :increment_quantity do
  desc "Обновление курсов валют"
  task :update => :environment do
    ValueStorage.find(1).increment!(:value, 10)
  end
end
