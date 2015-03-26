module ActivitiesHelper
	def link_to_add_desc_field(name, builder, association)
		new_object = builder.object.send(association).klass.new
		fields = builder.fields_for(association, new_object, child_index: "new_#{association}") do |f|
			render(association.to_s + "/" + association.to_s.singularize + "_field", f: f)
		end	
		link_to(name, "#", class: "add_desc_field", data: {id: "new_#{association}", fields: fields.gsub("\n", "")})
	end
end
