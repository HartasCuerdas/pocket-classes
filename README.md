# Pocket Classes [![Gem Version](https://badge.fury.io/rb/pocket-classes.svg)](http://badge.fury.io/rb/pocket-classes) [![Dependency Status](https://gemnasium.com/HartasCuerdas/pocket-classes.svg)](https://gemnasium.com/HartasCuerdas/pocket-classes)

[![Code Climate](https://codeclimate.com/github/HartasCuerdas/pocket-classes/badges/gpa.svg)](https://codeclimate.com/github/HartasCuerdas/pocket-classes) [![Inline docs](http://inch-ci.org/github/HartasCuerdas/pocket-classes.svg?branch=master&style=flat-square)](http://inch-ci.org/github/HartasCuerdas/pocket-classes)

Classes to work with [Pocket](http://getpocket.com).

[Pocket Classes on RubyGems.org](https://rubygems.org/gems/pocket-classes)

## Installation

    gem install pocket-classes

## Or on Gemfile

    gem 'pocket-classes', '~> 0.0.1'

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
