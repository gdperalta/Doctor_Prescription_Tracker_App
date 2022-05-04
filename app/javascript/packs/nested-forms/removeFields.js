import { getTotalCost, handleEvents } from '../getCost';

export class removeFields {
	constructor() {
		this.iterateLinks();
	}

	iterateLinks() {
		document.addEventListener('click', (e) => {
			if (e.target && e.target.classList.contains('remove_fields')) {
				this.handleClick(e.target, e);
			}
		});
	}

	handleClick(link, e) {
		if (!link || !e) return;
		e.preventDefault();
		let fieldParent = link.closest('.nested-fields');
		let prescMedsField = fieldParent.querySelector('.presc_meds_fields');
		let deleteField = fieldParent
			? fieldParent.querySelector('input[type="hidden"]')
			: null;

		if (deleteField) {
			deleteField.value = 1;
			prescMedsField.innerHTML = '';
			fieldParent.style.display = 'none';
			handleEvents();
			getTotalCost();
		}
	}
}
