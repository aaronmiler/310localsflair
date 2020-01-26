namespace :flair do
  task :fetch => :environment do
    warn "Fetching Flair Job"
    FlairFetcher.perform_now
    warn "Fetching Complete"
  end
end
