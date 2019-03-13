json.array! @tags do |tag|
  json.partial! 'tag.json.jbuilder', tag: tag
end
