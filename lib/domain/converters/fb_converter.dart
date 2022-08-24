abstract class FbConverter<FbModel, Entity> {
  Entity fbModelToEntity(FbModel model);

  FbModel entityToFbModel(Entity entity);
}
