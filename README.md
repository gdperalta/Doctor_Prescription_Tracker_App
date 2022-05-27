# **Doctor Prescription Tracker**

![Ruby 3.0.3](https://img.shields.io/badge/Ruby-%3E%3D3.0.3-red) ![Rails 6.1.4.6](https://img.shields.io/badge/Rails-6.1.4.6-red) ![Yarn 1.22.10](https://img.shields.io/badge/Yarn-1.22.10-%232188b6%3B) ![PostgrSQL 12.9](https://img.shields.io/badge/PostgreSQL-12.9-%23336791) ![Bootstrap 5.1.3](https://img.shields.io/badge/Bootstrap-5.1.3-%236610f2)

## **About the project**

The Doctor Prescription Tracker application allows a user to track the prescriptions given by their doctors.

### **Homepage**

![homepage][homepage_pic]

## **Key Features**

- Register a user's doctors in the app.
- Register a medicine and its price to make it easier to track them.
- Add a prescription with its total price given by a doctor.
- Add a discounted price to a medicine if present.
- Sort and search for your registered doctors and medicines.
- Sort your prescriptions by total cost or date prescribed.

## **ERD**

![ERD][erd_pic]

## **Live Demo**

Check out the live demo of the app in the link below:

[Prescription Tracker App](https://prescription-tracker-app.herokuapp.com)

## **Getting Started**

### **Prerequisites**

The setups steps expect the Builds listed above to be installed on the system

### **Instructions**

- Clone the repository

```bash
git clone https://github.com/gdperalta/Doctor_Prescription_Tracker_App.git
cd Doctor_Prescription_Tracker_App
```

- Install Dependencies

```bash
bundle install
yarn install
```

- Initialize the Database

```bash
rails db:create db:migrate
```

- Run the server

```bash
rails server
```

## **System dependencies**

- Ransack 2.6

## Roadmap

- [ ] Add ability to add a dosage in the presc_medicines table

[erd_pic]: docs/img/doctor_prescription_erd.png
[homepage_pic]: docs/img/app_screenshot.png
