module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + '_fields', f: builder)
    end
    link_to(name, '#', class: 'add_fields btn btn-outline-primary mt-2 mb-3',
                       data: { id: id, fields: fields.gsub("\n", '') })
  end

  def get_medicine(presc_medicine)
    medicine = Medicine.find(presc_medicine.medicine_id)
    presc_medicine.quantity > 1 ? medicine.meds_name.pluralize : medicine.meds_name
  end
end
