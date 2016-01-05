package be.g00glen00b.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import be.g00glen00b.model.Person;

public interface PersonService {

    List<Person> getPersons();

    @Transactional
    Person addPerson(Person person);

    @Transactional
    Person updatePerson(Person person);

    @Transactional
    void deletePerson(Person person);
}
