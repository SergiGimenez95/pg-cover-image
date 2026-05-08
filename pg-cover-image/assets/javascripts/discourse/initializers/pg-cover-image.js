import { apiInitializer } from "discourse/lib/api";

export default apiInitializer("0.11.1", (api) => {
  // Acción para guardar la URL de la imagen en el custom field
  api.modifyClass("controller:composer", {
    pluginId: "pg-cover-image",

    actions: {
      uploadCoverImage(file) {
        this.set("composerModel.custom_fields.pg_cover_image", file.url);
      },
    },
  });

  // Aseguramos que el composer tenga el campo
  api.decorateComposer((composer) => {
    composer.addComposerField("pg_cover_image", "");
  });
});
