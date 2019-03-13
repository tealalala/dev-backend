json.array! @posts do |post|
  json.partial! 'post.json.jbuilder', post: post
end
