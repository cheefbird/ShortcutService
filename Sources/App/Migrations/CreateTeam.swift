import Fluent

struct CreateTeam: Migration {
  func prepare(on database: Database) -> EventLoopFuture<Void> {
    database.schema("teams")
      .id()
      .field("name", .string, .required)
      .field("mentionName", .string, .required)
      .field("avatarURL", .string, .required)
      .create()
  }
  
  func revert(on database: Database) -> EventLoopFuture<Void> {
    database.schema("teams").delete()
  }
}
