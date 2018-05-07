include Chef::DSL::DataQuery

# Class to manage instana agent configuration
class Instana
  def self.data(field, item, databag = 'instana-agent')
    return data_bag_item(databag, item)[field] if item_in_data_bag?(databag, item)

    nil
  end

  def self.item_in_data_bag?(databag, item)
    Chef::DataBag.list.include?(databag) && data_bag(databag).include?(item)
  end

  private_class_method :item_in_data_bag
end
