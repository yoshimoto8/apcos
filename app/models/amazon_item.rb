class AmazonItem
  def self.fetch_amazon_item(keyword)
    items = search(keyword)
    filter_item items
  end

  private

  def self.search(keyword)
    Amazon::Ecs.debug = false
    Amazon::Ecs.item_search(
      keyword,
      search_index:  'HealthPersonalCare',
      dataType: 'script',
      response_group: 'ItemAttributes, Images',
      country:  'jp'
    )
  end

  def self.filter_item(items)
    search_items = items.map do |item|
      {
        cosmetic_title: item.get('ItemAttributes/Title'),
        cosmetic_url: item.get('LargeImage/URL'),
        amazon_url: item.get('DetailPageURL')
      }
    end
    search_items
  end
end
