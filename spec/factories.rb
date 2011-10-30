Factory.define :user do |user|
  user.name                  "Nathalia S"
  user.email                 "nathaliacomth8@gmail.com"
  user.password              "testing"
  user.password_confirmation "testing"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end