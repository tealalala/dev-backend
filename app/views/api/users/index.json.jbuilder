json.array! @users do |user|
  json.partial! 'user.json.jbuilder', user: user
end
