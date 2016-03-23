module DeepAdmin::FieldsHelper do
  def field_for(record, field, template=nil, &block)
    field_name = record.class.human_attribute_name(field)
    field_value = block_given? ? capture(&block) : record.send(field)

    locals = {
      record: record,
      field: field,
      field_name: field_name,
      field_value: field_value,
      template: template
    }

    if template.present?
      template_partial = "/deep_admin/item_field/field_#{template}"
      locals[:field_value] = render(template_partial, locals)
    end

    render '/deep_admin/item_field/field', locals

    content_tag :div, class: 'list-group-item' do
  end
end