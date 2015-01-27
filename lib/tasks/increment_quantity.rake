namespace :increment_quantity do
  desc "Обновление счетчика купленных устройств"
  task :update => :environment do
    ValueStorage.find(1).increment!(:value, 5 + Random.rand(5))
  end
end
