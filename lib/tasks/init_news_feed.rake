namespace :news do

  desc "Start polling for news"
  task init: :environment do
    puts "Starting ..."

    NewsFilter.types.each do |type|
      normalized_type = type.capitalize
      klass = "RssParser::#{normalized_type}"

      NewsFetcherJob.perform_later(klass)
    end


    puts 'Finished!'
  end
end
