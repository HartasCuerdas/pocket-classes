require_relative 'spec_helper'
require 'tagCollection'

describe TagCollection, "complementarity" do
  it "tagged items are complementary to untagged items" do
    info = YAML.load(File.read('test/info.yml'))
    list = info['list']

    itemLoader = ItemLoader.new(list)
    taggedItems = itemLoader.getTaggedItems
    untaggedItems = itemLoader.getUntaggedItems

    expect(list.length).to eq(taggedItems.length + untaggedItems.length)
  end
end