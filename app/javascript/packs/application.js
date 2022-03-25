// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from '@rails/ujs';
import Turbolinks from 'turbolinks';
import * as ActiveStorage from '@rails/activestorage';
import 'channels';
import { getTotalCost, handleEvents } from './getCost';
import { addFields } from './nested-forms/addFields';
import { removeFields } from './nested-forms/removeFields';
import 'bootstrap-icons/font/bootstrap-icons.css';

Rails.start();
Turbolinks.start();
ActiveStorage.start();

// Added for bootstrap
require('@popperjs/core');

import 'bootstrap';

// Import the specific modules needed for bootstrap
import { Tooltip, Popover } from 'bootstrap';

// The stylesheet location
require('../stylesheets/application.scss');

// If using Turbolinks
document.addEventListener('turbolinks:load', () => {
	var tooltipTriggerList = [].slice.call(
		document.querySelectorAll('[data-bs-toggle="tooltip"]')
	);
	var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
		return new Tooltip(tooltipTriggerEl);
	});

	var popoverTriggerList = [].slice.call(
		document.querySelectorAll('[data-bs-toggle="popover"]')
	);
	var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
		return new Popover(popoverTriggerEl);
	});
});
//End code for bootsrap

window.addEventListener('turbolinks:load', () => {
	new addFields();
	new removeFields();
	getTotalCost();
	handleEvents();
});
