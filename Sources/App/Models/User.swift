
import Vapor
import Fluent

final class User: Model {
  static let schema = "users"
  
  @ID
  var id: UUID?
  
  @Field(key: "role")
  var role: String
  
  @Field(key: "name")
  var name: String
  
  @Field(key: "email")
  var email: String
  
  @Field(key: "mentionName")
  var mentionName: String
  
  @Field(key: "avatarURL")
  var avatarURL: String
  
  init() {}
  
  init(id: UUID? = nil, role: String, name: String, email: String, mentionName: String, avatarURL: String) {
    self.id = id
    self.role = role
    self.name = name
    self.email = email
    self.mentionName = mentionName
    self.avatarURL = avatarURL
  }
}
