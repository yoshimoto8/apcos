class CosmeticFinder
  def self.get_item(keyword)
    # cosmetic = fetch_cosmetic(keyword)
    amazon_item = fetch_amazon_item keyword
    [amazon_item]
  end

  private

  def fetch_cosmetic(keyword)
    Cosmetic.fetch_cosmetic keyword
  end

  def fetch_amazon_item(keyword)
    Amazon_Item.fetch_amazon_item keyword
  end
end
