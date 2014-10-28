require_relative 'spec_helper'
require 'tagCollection'

describe TagCollection, "complementarity" do
  
  info = YAML.load(File.read('test/info.yml'))
  list = info['list']

  itemLoader = ItemLoader.new(list)
  taggedItems = itemLoader.getTaggedItems
  untaggedItems = itemLoader.getUntaggedItems

  it "list is not empty" do
    expect(list.length).not_to eq(0)
  end

  it "taggedItems is not empty" do
    expect(taggedItems.length).not_to eq(0)
  end

  it "untaggedItems is not empty" do
    expect(taggedItems.length).not_to eq(0)
  end
  
  it "taggedItems is complementary to untaggedItems" do
    expect(list.length).to eq(taggedItems.length + untaggedItems.length)
  end

end