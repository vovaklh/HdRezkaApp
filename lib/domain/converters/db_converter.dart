abstract class DbConverter<DbModel, Entity> {
  Entity dbModelToEntity(DbModel model);

  DbModel entityToDbModel(Entity entity);
}
