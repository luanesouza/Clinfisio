# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }}])
#   Character.create(name: 'Luke', movie: movies.first)
doctors = Doctor.create([{
  doctor_first_name: 'Jamile',
  doctor_last_name: 'Mota',
  doctor_email: 'email@email.com',
  doctor_password_digest: 'pass',
  doctor_specialty: 'Fisioterapeuta'
},
  {
  doctor_first_name: 'Elania',
  doctor_last_name: 'Circuncizao',
  doctor_email: 'email@email.com',
  doctor_password_digest: 'pass',
  doctor_specialty: 'Nutricionista'
},
  {
  doctor_first_name: 'Daiane',
  doctor_last_name: 'Rocha',
  doctor_email: 'email@email.com',
  doctor_password_digest: 'pass',
  doctor_specialty: 'Fisioterapeuta'
  }])

patients = Patient.create([{
  patient_first_name: 'Ana',
  patient_last_name: 'Ana',
  patient_phone_number: '12345',
  diagnose: 'mkmk',
  address: 'mkmkmkmk',
  cpf_rg: '90876543',
  dob: '8659865',
  insurance: 'Saude Mil',
  invoice_days: 30,
  enrollment_number: '86950',
  disease_classification: '32hfhd4536',
  pass_number: '98076',
  doctor_petitioner: 'nvcmruei',
  clinic_petitioner: 'vcmfjk',
  federal_medicine_council: 'dhjseuwi'
},
{
  patient_first_name: 'Sam',
  patient_last_name: 'Bob',
  patient_phone_number: '12345',
  diagnose: 'mkmk',
  address: 'mkmkmkmk',
  cpf_rg: '90876543',
  dob: '8659865',
  insurance: 'Saude Mil',
  invoice_days: 30,
  enrollment_number: '86950',
  disease_classification: '32hfhd4536',
  pass_number: '98076',
  doctor_petitioner: 'nvcmruei',
  clinic_petitioner: 'vcmfjk',
  federal_medicine_council: 'dhjseuwi'
},
{
  patient_first_name: 'Bob',
  patient_last_name: 'Bob',
  patient_phone_number: '12345',
  diagnose: 'mkmk',
  address: 'mkmkmkmk',
  cpf_rg: '90876543',
  dob: '8659865',
  insurance: 'Saude Mil',
  invoice_days: 30,
  enrollment_number: '86950',
  disease_classification: '32hfhd4536',
  pass_number: '98076',
  doctor_petitioner: 'nvcmruei',
  clinic_petitioner: 'vcmfjk',
  federal_medicine_council: 'dhjseuwi'
  }])

sessions = Session.create([{
  session_type: 'fhdjk',
  session_qnty: 1,
  session_bilateral: true,
  session_price: 100,
  evaluation_price: 49,
  discount: false,
  discount_price: 10,
  patient_dependent: false,
},
  {
  session_type: '',
  session_qnty: 2,
  session_bilateral: true,
  session_price: 100,
  evaluation_price: 49,
  discount: false,
  discount_price: 10,
  patient_dependent: false,
  }])

appointments = Appointment.create([{
   patient_name: 'Sam',
   patient_id: 2,
   doctor_id: 2,
   doctor_name: 'Elania',
   date: '384',
   time: '564',
   session_id: 1,
   session_type: 'Nutricao',
   patient_present: 'true',

},
{
   patient_name: 'Sam',
   patient_id: 2,
   doctor_id: 2,
   doctor_name: 'Elania',
   date: '384',
   time: '564',
   session_id: 1,
   session_type: 'Fisioterapia',
   patient_present: 'true',

},
{
   patient_name: 'Bob',
   patient_id: 3,
   doctor_id: 2,
   doctor_name: 'Elania',
   date: '384',
   time: '564',
   session_id: 1,
   session_type: 'Nutricao',
   patient_present: 'true',

}])

expenses = Expense.create({
  expense_date: '3872',
  expense_type: 'ghjk',
  expense_amount: 100,
  expense_doc_number: '46378',
  balance: 356278
    })
