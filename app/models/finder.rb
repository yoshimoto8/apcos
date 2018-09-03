class Finder
  # fetch myself database and Amazon API
  def self.fetch_cosmetic(keyword)
    # cosmetic = fetch_cosmetic(keyword)
    amazon_item = fetch_amazon_item keyword
    [amazon_item]
  end

  # add function of fetch_review function later
  def self.fetch_review(keyword)
  end

  private

  def fetch_cosmetic(keyword)
    Cosmetic.fetch_cosmetic keyword
  end

  def fetch_amazon_item(keyword)
    AmazonItem.fetch_amazon_item keyword
  end
end
