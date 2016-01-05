package be.g00glen00b.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import be.g00glen00b.dto.PersonDto;

public interface PersonRepository  extends JpaRepository<PersonDto, Integer> {

}
