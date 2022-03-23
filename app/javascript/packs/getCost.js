export const getTotalCost = () => {
	const medicines = document.querySelectorAll('.input_meds');
	const discounts = document.querySelectorAll('.discount_fields');
	const totalCost = document.querySelector('.total_cost');
	let total = 0;

	if (!medicines.length) return;

	medicines.forEach((medicine, index) => {
		total +=
			+medicine.options[medicine.selectedIndex].dataset.cost *
			(1 - discounts[index].value / 100);
	});
	totalCost.value = total;
};

export const handleEvents = () => {
	const medicines = document.querySelectorAll('.input_meds');
	const discounts = document.querySelectorAll('.discount_fields');
	const l = medicines.length;

	for (let i = 0; i < l; i++) {
		if (!medicines[i].onchange) {
			medicines[i].onchange = getTotalCost;
			discounts[i].onchange = getTotalCost;
		}
	}
};
