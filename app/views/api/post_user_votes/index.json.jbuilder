json.array! @post_user_votes do |post_user_vote|
  json.partial! 'post_user_vote.json.jbuilder', post_user_vote: post_user_vote
end
