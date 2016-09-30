require 'test_helper'

class EncountersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encounter = encounters(:one)
    @patient = patients(:one)
  end

  test "should get index" do
    get encounters_url()
    assert_response :success
  end

  test "should get new" do
    assert_difference('Patient.count') do
      post patients_url, params: { patient: { first_name: @patient.first_name, height: @patient.height, last_name: @patient.last_name, middle_name: @patient.middle_name, mrn: @patient.mrn, weight: @patient.weight } }
    end
    get new_encounter_url(:patient_id => @patient.id)
    assert_response :success
  end

  test "should create encounter" do
    assert_difference('Encounter.count') do
      post encounters_url, params: { encounter: { admitted_at: @encounter.admitted_at, bed: @encounter.bed, discharged_at: @encounter.discharged_at, location: @encounter.location, patient_id: @encounter.patient_id, room: @encounter.room, visit_number: @encounter.visit_number } }
    end

    assert_redirected_to patient_url(@encounter.patient_id)
  end

  test "should show encounter" do
    get encounter_url(@encounter)
    assert_response :success
  end

  test "should get edit" do
    get edit_encounter_url(@encounter)
    assert_response :success
  end

  test "should update encounter" do
    patch encounter_url(@encounter), params: { encounter: { admitted_at: @encounter.admitted_at, bed: @encounter.bed, discharged_at: @encounter.discharged_at, location: @encounter.location, patient_id: @encounter.patient_id, room: @encounter.room, visit_number: @encounter.visit_number } }
    assert_redirected_to patient_url(@encounter.patient_id)
  end

  test "should destroy encounter" do
    assert_difference('Encounter.count', -1) do
      delete encounter_url(@encounter)
    end

    assert_redirected_to patient_url(@encounter.patient_id)
  end
end
