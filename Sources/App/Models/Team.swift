
import Vapor
import Fluent

final class Team: Model, Content {
  static let schema = "teams"
  
  @ID
  var id: UUID?
  
  @Field(key: "name")
  var name: String
  
  @Field(key: "mentionName")
  var mentionName: String
  
  @Field(key: "avatarURL")
  var avatarURL: String
  
  init() {}
  
  init(id: UUID, name: String, mentionName: String, avatarURL: String) {
    self.id = id
    self.name = name
    self.mentionName = mentionName
    self.avatarURL = avatarURL
  }
}
