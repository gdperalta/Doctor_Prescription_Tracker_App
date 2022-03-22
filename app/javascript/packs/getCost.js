export const getTotalCost = () => {
	const medicines = document.querySelectorAll('.input_meds');
	const totalCost = document.querySelector('.total_cost');
	let total = 0;

	medicines.forEach((medicine) => {
		total += +medicine.options[medicine.selectedIndex].dataset.cost;
	});
	totalCost.value = total;
};

window.updateCost = function (e) {
	e.preventDefault();
	getTotalCost();
};
