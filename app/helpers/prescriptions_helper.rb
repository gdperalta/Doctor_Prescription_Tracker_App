module PrescriptionsHelper
  def grouped_medicine_options
    Medicine.all.map do |m|
      [m.meds_category, "#{m.meds_name} - Php #{m.meds_cost}", m.id, { 'data-cost': m.meds_cost }]
    end.group_by(&:shift)
  end

  def compute_discount(presc_medicine)
    medicine = Medicine.find(presc_medicine.medicine_id)
    presc_medicine.quantity * medicine.meds_cost * (1 - presc_medicine.discount / 100.0)
  end
end
