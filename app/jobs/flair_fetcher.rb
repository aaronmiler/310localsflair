class FlairFetcher < ApplicationJob
  def perform
    begin
      current_flair = Flair.last

      comments = HTTParty.get('https://old.reddit.com/u/310local', headers: {"User-Agent" => "com.310localflair by /u/wartoothe"}).body
      url = ("https://old.reddit.com" + comments.scan(%r{data-permalink="(\/r\/mls\/[a-z0-9\/_]+)}i).flatten[0])

      sleep(10)

      page = HTTParty.get(url, headers: {"User-Agent" => "com.310localflair by /u/wartoothe"})
      raise "Bot warning" if page.body.include?('we enforce a hard speed limit on requests')

      document = Nokogiri.parse(page.body)
      element = document.search('.author').find { |x| x.text.downcase == '310local' }
      flair = element.parent.search('.flair').text

      if current_flair.try(:team) != flair
        Flair.create!(team: flair, found: Date.today)
      end
    rescue
      warn 'Borked'
    end
  end
end
