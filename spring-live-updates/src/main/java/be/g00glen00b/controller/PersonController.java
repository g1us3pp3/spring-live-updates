package be.g00glen00b.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import be.g00glen00b.aspects.NotifyClients;
import be.g00glen00b.model.Person;
import be.g00glen00b.service.PersonService;

@Controller
//@RequestMapping("other")
public class PersonController {

    @Autowired
    private PersonService service;

    @RequestMapping(value = "/persons_list",method = RequestMethod.GET)
    public String viewPersons() {
        return "persons";
    }

    @RequestMapping(value = "/persons", method = RequestMethod.GET)
    public @ResponseBody List<Person> getPersons() {
        return service.getPersons();
    }

    @NotifyClients
    @RequestMapping(value = "/persons/{id}", method = RequestMethod.PUT)
    public @ResponseBody Person update(@PathVariable int id, @RequestBody Person person) {
    	person.setId(id);
        Person out = service.updatePerson(person);
        return out;
    }
    
    @NotifyClients
    @RequestMapping(value = "/persons", method = RequestMethod.POST)
    public @ResponseBody Person add(@RequestBody Person person) {
    	Person out = service.addPerson(person);
        return out;
    }
    
    @NotifyClients
    @RequestMapping(value = "/persons/{id}", method = RequestMethod.DELETE)
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable int id) {
    	Person task = new Person();
    	task.setId(id);
        service.deletePerson(task);
    }
}
