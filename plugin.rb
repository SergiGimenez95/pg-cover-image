# name: pg-cover-image
# about: Permite elegir una imagen de portada al crear un tema y mostrarla en la lista
# version: 0.1
# authors: Sergio & Copilot
# url: https://github.com/TU_USUARIO/pg-cover-image

after_initialize do
  # Registrar el custom field donde guardaremos la imagen
  Topic.register_custom_field_type("pg_cover_image", :string)

  # Enviar el custom field al cliente en la lista de temas
  add_to_serializer(:topic_list_item, :pg_cover_image) do
    object.custom_fields["pg_cover_image"]
  end

  # Enviar el custom field al cliente en la vista del tema
  add_to_serializer(:topic_view, :pg_cover_image) do
    object.topic.custom_fields["pg_cover_image"]
  end
end
