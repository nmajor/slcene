module Populate
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def wiseguys
      rss_url    = "http://clients.ticketbiscuit.com/eventlist.rss?ack=WiseGuysComedyWestValley"
      address = '2194 West 3500 South'
      url     = 'http://wiseguyscomedy.com'
      venue_name   = 'Wise Guys Live Comedy'

      rss = SimpleRSS.parse open(rss_url)
      rss.items.each do |i|
        start_at, name = i.title.split ' : '
        start_at = Time.parse(start_at)
        name.gsub!(/\s(?=is)(.*)(?<=out)[!]?/i, '')

        event = Event.find_or_initialize_by :name => name, :venue_name => venue_name, :start_at => start_at
        event.update_attributes(
          :url                => url,
          :address            => address,
          :remote_image_url   => i.media_content_url,
          :start_at           => start_at,
          :description        => i.description,
          :name               => name,
        )
      end

    end
  end
end