
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
  
  init(id: String, name: String, mentionName: String, avatarURL: String) {
    let uuid = UUID(uuidString: id)!
    self.id = uuid
    self.name = name
    self.mentionName = mentionName
    self.avatarURL = avatarURL
  }
}
