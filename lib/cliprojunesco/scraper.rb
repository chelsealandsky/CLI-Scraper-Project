class Cliprojunesco::Scraper
    def self.scrape
        @doc ||= Nokogiri::HTML(open("https://www.visittheusa.com/experience/world-heritage-sites-united-states")).css("div.experience-body__content")
    end
    def self.scrape_sites
        self.scrape.each do |site|
            name = site.search(".experience-body__title").text
            info = site.search(".experience-body__body").text
            Site.new(name, info)
        end
    end 
end 