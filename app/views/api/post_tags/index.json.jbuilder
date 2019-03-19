json.array! @post_tags do |post_tag|
  json.partial! 'post_tag.json.jbuilder', post_tag: post_tag
end
