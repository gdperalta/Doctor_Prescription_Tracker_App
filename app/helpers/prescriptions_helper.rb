module PrescriptionsHelper
  def grouped_medicine_options
    Medicine.all.map do |m|
      [m.meds_category, "#{m.meds_name} - Php #{m.meds_cost}", m.id, { 'data-cost': m.meds_cost }]
    end.group_by(&:shift)
  end
end
