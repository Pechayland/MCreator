@Mod.EventBusSubscriber public class ${name}Procedure {
	@SubscribeEvent public static void onPickupXP(PlayerXpEvent.PickupXp event) {
		if (event != null && event.getEntity() != null) {
			Entity entity = event.getEntity();
			Map<String, Object> dependencies = new HashMap<>();
            dependencies.put("x", entity.getX());
		    dependencies.put("y", entity.getY());
		    dependencies.put("z", entity.getZ());
		    dependencies.put("world",entity.level);
			dependencies.put("entity", entity);
			dependencies.put("event", event);
			execute(dependencies);
		}
	}