package com.divergentsl.springbootcms.service;

import java.util.List;

import com.divergentsl.springbootcms.entity.Patient;

public interface PatientService {

	public void insert(int patientId, String patientName, String address);

	public List<Patient> findAll();

	public Patient find(int patientId);

	public void removePatient(int id);

}