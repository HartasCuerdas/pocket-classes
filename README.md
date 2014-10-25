# Pocket Classes

Classes to work with [Pocket](http://getpocket.com).

## New Item

    item = Item.new

## Tag Collection

    item = Item.new
    items = []
    items.push(item)
    tagCollection = TagCollection.new(items)

## Get Tags from TagCollecion

    tags = tagCollection.getTags

## About TagCollection

  TagCollection has a tags property.
  
  tags property is a Hash.

  Keys are tag terms (eg. 'history', 'ruby', 'jokes')

    tag = tags['term1']

## About tag

  Tag is a Hash that contains useful counters.

    tag['count']: Total of articles tagged with current tag
    tag['archived']: Total of archived articles tagged with current tag
    tag['unread']: Total of unread articles tagged with current tag. Note that this is complementary to 'archived' count.
