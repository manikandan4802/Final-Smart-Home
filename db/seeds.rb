

for i in 0..999 do
    puts("come")
    SmartLock.create
end 


if Doorkeeper::Application.count.zero?
    Doorkeeper::Application.create(name: "iOS client", redirect_uri: "", scopes: "")
    Doorkeeper::Application.create(name: "Android client", redirect_uri: "", scopes: "")
    Doorkeeper::Application.create(name: "React", redirect_uri: "", scopes: "")
end