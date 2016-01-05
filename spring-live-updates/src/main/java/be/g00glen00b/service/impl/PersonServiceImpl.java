package be.g00glen00b.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import be.g00glen00b.dto.PersonDto;
import be.g00glen00b.model.Person;
import be.g00glen00b.repository.PersonRepository;
import be.g00glen00b.service.PersonService;

@Service
public class PersonServiceImpl implements PersonService {
    
    @Autowired
    private PersonRepository repo;
    
    @Autowired
    private Mapper mapper;

    public List<Person> getPersons() {
        List<PersonDto> list = repo.findAll();
        List<Person> out = new ArrayList<Person>();
        for (PersonDto dto : list) {
            out.add(mapper.map(dto, Person.class));
        }
        return out;
    }

    @Transactional
    @Override
    public Person addPerson(Person person) {
    	PersonDto dto = mapper.map(person, PersonDto.class);
        return mapper.map(repo.saveAndFlush(dto), Person.class);
    }

    @Transactional
    @Override
    public Person updatePerson(Person person) {
    	PersonDto dto = repo.findOne(person.getId());
        dto.setDescription(person.getDescription());
        dto.setVotes(person.getVotes());
        dto.setTitle(person.getTitle());
        return mapper.map(repo.saveAndFlush(dto), Person.class);
    }

    @Transactional
    @Override
    public void deletePerson(Person person) {
        repo.delete(person.getId());
    }
}
